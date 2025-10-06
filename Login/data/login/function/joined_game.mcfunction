execute as @s[tag=!login_last_unauthenticated] run function login:detect_op

function login:deop

scoreboard players add @a login_id 0
execute as @s[scores={login_id=0}] run scoreboard players add Next_id login_id 1
scoreboard players operation @s[scores={login_id=0}] login_id = Next_id login_id

#If indeed authenticated last time things like the position, inventory and gamemode should be preserved
execute as @s[tag=!login_last_unauthenticated] run function login:store_player_data

function login:load_defaults

#We cannot move score here for some reason (it randomly stopped working, seems to be a race condition)

tag @s add login_unverified

tag @s add login_last_unauthenticated

scoreboard players reset @s change_password

execute as @s[tag=!login_password] run function login:new_login
execute as @s[tag=login_password] run function login:old_login

scoreboard players set @s login_leave 0
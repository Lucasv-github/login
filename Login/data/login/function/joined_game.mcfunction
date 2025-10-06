execute as @s unless score @s login_op matches -2147483647.. run function login:detect_op

function login:deop

execute as @s[gamemode=adventure] unless score @s login_gamemode matches -2147483647.. run scoreboard players set @s login_gamemode 0
execute as @s[gamemode=creative] unless score @s login_gamemode matches -2147483647.. run scoreboard players set @s login_gamemode 1
execute as @s[gamemode=spectator] unless score @s login_gamemode matches -2147483647.. run scoreboard players set @s login_gamemode 2
execute as @s[gamemode=survival] unless score @s login_gamemode matches -2147483647.. run scoreboard players set @s login_gamemode 3

gamemode spectator

scoreboard players add @a login_id 0
execute as @s[scores={login_id=0}] run scoreboard players add Next_id login_id 1
scoreboard players operation @s[scores={login_id=0}] login_id = Next_id login_id

#Yeah we need the execute summon or else we create some kind of weird race condition
execute at @s summon minecraft:armor_stand run function login:locker_spawned

#We cannot move score here for some reason (it randomly stopped working, seems to be a race condition)

tag @s add login_unverified

scoreboard players reset @s change_password

execute as @s[tag=!login_password] run function login:new_login
execute as @s[tag=login_password] run function login:old_login

scoreboard players set @s login_leave 0
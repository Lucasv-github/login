execute as @a[tag=login_next_tick_store_playerdata] run function login:store_player_data

#Need to be below store
#We don't want to hard code dimensions
execute as @a[tag=login_unverified] at @s run tp @s 0 10000 0

execute as @a[tag=login_next_tick_store_playerdata] run function login:load_defaults
tag @a remove login_next_tick_store_playerdata

execute as @a unless score @s login_leave matches 0 run function login:joined_game

scoreboard players enable @a[tag=login_unverified] login
scoreboard players enable @a[tag=login_password,tag=!login_unverified] change_password

execute as @a[tag=!login_password] unless score @s login matches 0 if score @s login matches -2147483647.. run function login:set_password
execute as @a[tag=login_password] unless score @s login matches 0 if score @s login matches -2147483647.. run function login:compare_password

execute as @a[tag=!login_unverified] unless score @s change_password matches 0 if score @s change_password matches -2147483647.. run function login:change_password

scoreboard players add Temp login_counter 1

execute if score Temp login_counter matches 200..

scoreboard players operation Temp reg_1 = Temp login_counter
scoreboard players operation Temp reg_1 %= 20 reg_1

#Prevent damage
execute if score Temp reg_1 matches 0 run effect give @a[tag=login_unverified] minecraft:resistance 2 4 true

execute if score Temp login_counter matches 200.. run function login:permission_check


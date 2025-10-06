execute as @a unless score @s login_leave matches 0 run function login:joined_game

tp @a[tag=login_unverified] 0 -120 0

scoreboard players enable @a[tag=login_unverified] login
scoreboard players enable @a[tag=login_password,tag=!login_unverified] change_password

execute as @a[tag=!login_password] unless score @s login matches 0 if score @s login matches -2147483647.. run function login:set_password
execute as @a[tag=login_password] unless score @s login matches 0 if score @s login matches -2147483647.. run function login:compare_password

execute as @a[tag=!login_unverified] unless score @s change_password matches 0 if score @s change_password matches -2147483647.. run function login:change_password

scoreboard players add Temp login_counter 1
execute if score Temp login_counter matches 200.. run function login:permission_check


execute as @s[scores={login_gamemode=0}] run gamemode adventure
execute as @s[scores={login_gamemode=1}] run gamemode creative
execute as @s[scores={login_gamemode=2}] run gamemode spectator
execute as @s[scores={login_gamemode=3}] run gamemode survival

execute as @s[scores={login_op=1}] run function login:op

scoreboard players reset @s login_gamemode
scoreboard players reset @s login_op

#Removes need to crouch once
scoreboard players operation Temp login_id = @s login_id
execute as @e[type=minecraft:armor_stand,tag=login_locker] if score @s login_id = Temp login_id run kill @s
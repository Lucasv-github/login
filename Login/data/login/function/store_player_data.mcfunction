#say preserv player data

#Gamemode
execute as @s[gamemode=adventure] run scoreboard players set @s login_gamemode 0
execute as @s[gamemode=creative] run scoreboard players set @s login_gamemode 1
execute as @s[gamemode=spectator] run scoreboard players set @s login_gamemode 2
execute as @s[gamemode=survival] run scoreboard players set @s login_gamemode 3

#Pos
execute store result score @s login_x run data get entity @s Pos[0]
execute store result score @s login_y run data get entity @s Pos[1]
execute store result score @s login_z run data get entity @s Pos[2]

#Xp
execute store result score @s login_xp run xp query @s points

function login:store_inventory
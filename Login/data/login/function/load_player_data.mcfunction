#say load player data

#Restore gamemode
execute as @s[scores={login_gamemode=0}] run gamemode adventure
execute as @s[scores={login_gamemode=1}] run gamemode creative
execute as @s[scores={login_gamemode=2}] run gamemode spectator
execute as @s[scores={login_gamemode=3}] run gamemode survival

#Restore pos
execute store result storage login:restored_pos x int 1 run scoreboard players get @s login_x
execute store result storage login:restored_pos y int 1 run scoreboard players get @s login_y
execute store result storage login:restored_pos z int 1 run scoreboard players get @s login_z

function login:set_pos with storage login:restored_pos

data remove storage login:restored_pos x
data remove storage login:restored_pos y
data remove storage login:restored_pos z

#Restore xp
execute store result storage login:restored_xp levels int 1 run scoreboard players get @s login_xp
function login:set_xp with storage login:restored_xp

data remove storage login:restored_xp levels

function login:load_inventory

#Restore op level
execute as @s[scores={login_op=1}] run function login:op

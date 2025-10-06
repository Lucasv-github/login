scoreboard objectives add reg_1 trigger
scoreboard objectives add login trigger
scoreboard objectives add change_password trigger
scoreboard objectives add login_password dummy
scoreboard objectives add login_leave minecraft.custom:minecraft.leave_game
scoreboard objectives add login_id dummy

scoreboard objectives add login_gamemode dummy
scoreboard objectives add login_op dummy
scoreboard objectives add login_x dummy
scoreboard objectives add login_y dummy
scoreboard objectives add login_z dummy
scoreboard objectives add login_xp dummy

scoreboard objectives add login_counter dummy

#Keep storages loaded
forceload add 0 0

tellraw @a {"text":"Login (1.21.x)-5 Loaded","bold":true,"color":"gold"}
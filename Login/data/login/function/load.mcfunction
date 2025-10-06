scoreboard objectives add reg_1 trigger
scoreboard objectives add login trigger
scoreboard objectives add change_password trigger
scoreboard objectives add login_password dummy
scoreboard objectives add login_leave minecraft.custom:minecraft.leave_game
scoreboard objectives add login_id dummy
scoreboard objectives add login_gamemode dummy
scoreboard objectives add login_op dummy
scoreboard objectives add login_counter dummy

tellraw @a {"text":"Login (1.21.x)-4 Loaded","bold":true,"color":"gold"}
scoreboard players set Temp reg_1 0

function login:op_probe

execute if score Temp reg_1 matches 0 run say WARNING THIS SERVER DOES NOT HAVE AN ADEQUATE FUNCTION PERMISSION LEVEL, CHANGE IT TO 4 IN server.properties

scoreboard players set Temp login_counter 0
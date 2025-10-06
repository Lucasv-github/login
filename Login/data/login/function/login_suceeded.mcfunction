tellraw @s {"text":"Login suceeded!","bold":true,"color":"dark_green"}

scoreboard players reset @s login

tag @s remove login_unverified

function login:load_player_data


tag @s remove login_last_unauthenticated
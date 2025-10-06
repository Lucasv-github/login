scoreboard players operation @s login_password = @s login

tellraw @s ["",{"text":"Your password is now: ","bold":true,"color":"blue"},{"score":{"name":"@s","objective":"login_password"},"color":"dark_purple"},{"text":" don't forget it.","bold":true,"color":"blue"}]

scoreboard players set @s login 0

tag @s remove login_unverified

tag @s add login_password

function login:end_setup
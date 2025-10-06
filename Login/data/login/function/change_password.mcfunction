scoreboard players operation @s login_password = @s change_password

tellraw @s ["",{"text":"Your password has now ben changed to: ","bold":true,"color":"blue"},{"score":{"name":"@s","objective":"login_password"},"color":"dark_purple"},{"text":" don't forget it.","bold":true,"color":"blue"}]

scoreboard players set @s change_password 0
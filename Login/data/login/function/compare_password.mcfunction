execute unless score @s login = @s login_password run function login:login_failed
execute if score @s login = @s login_password run function login:login_suceeded
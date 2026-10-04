#say SP

execute at @s as @a[tag=!login_last_unauthenticated] if score @s login_id = @n login_re_ride_id run ride @s mount @n
#execute at @s as @a[tag=!login_last_unauthenticated] if score @s login_id = @n login_re_ride_id run say SP FIRE
execute at @s as @a[tag=!login_last_unauthenticated] if score @s login_id = @n login_re_ride_id run scoreboard players reset @n login_re_ride_id
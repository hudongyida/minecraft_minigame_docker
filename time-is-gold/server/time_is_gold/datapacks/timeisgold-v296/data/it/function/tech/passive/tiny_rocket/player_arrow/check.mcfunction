scoreboard players set @s item.tiny_rocket.arrow_check 1
execute as @s on origin if entity @s[scores={item.tiny_rocket.active=1}] run return 1
return fail
tag @s add item.knuckles.wind_owner
execute as @s on vehicle if entity @s[tag=item.knuckles.dash] run kill @s
execute as @e[type=wind_charge,tag=item.knuckles.dash] if function it:tech/melee/knuckles/detect/owner run kill @s
tag @s remove item.knuckles.wind_owner
scoreboard players reset @s item.knuckles.in_dash
scoreboard players reset @s item.knuckles.air_time
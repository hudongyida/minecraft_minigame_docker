function it:tech/utils/cooldown/init {scoreboard:item.big_red_button.cooldown, value:200}
data modify storage timeisgold:function_api stack append value {power:3, playerid:0}
execute as @s store result storage timeisgold:function_api stack[-1].playerid int 1 run scoreboard players get @s playerid

execute as @e[type=#minecraft:arrows,tag=item.big_red_button.explode] at @s run function it:tech/utils/explode/init with storage timeisgold:function_api stack[-1]
execute as @e[type=#minecraft:arrows,tag=item.big_red_button.explode] run kill @s

data remove storage timeisgold:function_api stack[-1]
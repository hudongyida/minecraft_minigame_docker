function it:tech/utils/detect/right_click {advancement:"it:melee/knuckles_right_click", item_tag:knuckles, tag:item.knuckles.cooldown, type:1}

execute as @s[tag=item.knuckles.cooldown] run function it:tech/utils/cooldown/check {failTag:item.knuckles.fail, passTag:item.knuckles.pre, inputTag:item.knuckles.cooldown, scoreboard:item.knuckles.cooldown, status:1}
execute as @s[tag=item.knuckles.fail] run tag @s remove item.knuckles.fail

execute as @s[tag=item.knuckles.pre] unless score @s item.knuckles.Charge matches 10 run scoreboard players add @s item.knuckles.Charge 1
execute as @s[tag=item.knuckles.pre] if score @s item.knuckles.Charge matches 10.. run tag @s add item.knuckles.use
execute as @s[tag=item.knuckles.pre] run tag @s remove item.knuckles.pre

execute as @s[tag=item.knuckles.use] run function it:tech/utils/cooldown/init {scoreboard:item.knuckles.cooldown, value:50}
execute as @s[tag=item.knuckles.use] run data modify storage timeisgold:function_api stack append value {playerid:0,UUID:[]}
execute as @s[tag=item.knuckles.use] store result storage timeisgold:function_api stack[-1].playerid int 1 run scoreboard players get @s playerid
execute as @s[tag=item.knuckles.use] run data modify storage timeisgold:function_api stack[-1].UUID set from entity @s UUID
execute as @s[tag=item.knuckles.use] at @s run function it:tech/melee/knuckles/dash with storage timeisgold:function_api stack[-1]
execute as @s[tag=item.knuckles.use] run data remove storage timeisgold:function_api stack[-1]
execute as @s[tag=item.knuckles.use] run scoreboard players reset @s item.knuckles.Charge
execute as @s[tag=item.knuckles.use] at @s run playsound minecraft:entity.wind_charge.wind_burst player @a ~ ~ ~ 1 0.5 0

tag @s[tag=item.knuckles.use] remove item.knuckles.use
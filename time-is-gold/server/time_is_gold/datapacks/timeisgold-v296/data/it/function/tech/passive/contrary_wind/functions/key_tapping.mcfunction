execute as @s if predicate it:sneaking unless entity @s[scores={item.contrary_wind.sneak_time=6..}] run scoreboard players add @s item.contrary_wind.sneak_time 1
execute as @s unless predicate it:sneaking if entity @s[scores={item.contrary_wind.sneak_time=1..5}] run tag @s add item.contrary_wind.ready_to_drift

execute as @s[tag=item.contrary_wind.ready_to_drift] run scoreboard players reset @s item.contrary_wind.sneak_time
execute as @s[tag=item.contrary_wind.ready_to_drift] run function it:tech/utils/cooldown/check {scoreboard:item.contrary_wind.cooldown, inputTag:item.contrary_wind.ready_to_drift, passTag:item.contrary_wind.use, failTag:item.contrary_wind.fail, status:1}
execute as @s[tag=item.contrary_wind.fail] run tag @s remove item.contrary_wind.fail
# > item.contrary_wind.use
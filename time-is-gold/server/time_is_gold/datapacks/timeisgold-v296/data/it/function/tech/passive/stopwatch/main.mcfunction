execute as @a run function it:tech/utils/detect/slot {slot:7, item_tag:stopwatch, tag:item.stopwatch.condition}

execute as @a[tag=item.stopwatch.condition] if score @s timeX10 matches 1..1200 run tag @s add item.stopwatch.active
execute as @a[tag=item.stopwatch.condition] run tag @s remove item.stopwatch.condition

execute as @a[tag=item.stopwatch.active] at @s run function it:tech/passive/stopwatch/functions/tick
execute as @a[scores={item.stopwatch.active=1}] unless entity @s[tag=item.stopwatch.active] run scoreboard players reset @s item.stopwatch.active
execute as @a[tag=item.stopwatch.active] run tag @s remove item.stopwatch.active
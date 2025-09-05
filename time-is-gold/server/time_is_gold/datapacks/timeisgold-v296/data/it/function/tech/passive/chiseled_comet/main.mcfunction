execute as @a run function it:tech/utils/detect/slot {item_tag:chiseled_comet, tag:item.chiseled_comet.active, slot:6}
execute as @a if score @s item.chiseled_comet.active matches 1.. run scoreboard players remove @s item.chiseled_comet.active 1

execute as @a[tag=item.chiseled_comet.active] at @s run function it:tech/passive/chiseled_comet/functions/space
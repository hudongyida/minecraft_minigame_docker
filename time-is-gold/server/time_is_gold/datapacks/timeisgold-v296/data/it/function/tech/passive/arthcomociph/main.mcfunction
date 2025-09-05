execute as @a run function it:tech/utils/detect/slot {item_tag:arthcomociph, tag:item.arthcomociph.active, slot:6}
execute as @a if score @s item.arthcomociph.active matches 1.. run scoreboard players reset @s item.arthcomociph.active
execute as @a[tag=item.arthcomociph.active] at @s run function it:tech/passive/arthcomociph/functions/use
execute as @a[tag=item.arthcomociph.active] run tag @s remove item.arthcomociph.active
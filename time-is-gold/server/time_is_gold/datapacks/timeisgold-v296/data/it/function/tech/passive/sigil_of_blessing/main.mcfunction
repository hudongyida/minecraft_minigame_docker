execute as @a run function it:tech/utils/detect/slot {slot:7, item_tag:sigil_of_blessing, tag:item.sigil_of_blessing}

execute as @a[scores={item.sigil_of_blessing.active=1..}] run scoreboard players reset @s item.sigil_of_blessing.active
execute as @a[tag=item.sigil_of_blessing] run scoreboard players set @s item.sigil_of_blessing.active 1

tag @a[tag=item.sigil_of_blessing] remove item.sigil_of_blessing
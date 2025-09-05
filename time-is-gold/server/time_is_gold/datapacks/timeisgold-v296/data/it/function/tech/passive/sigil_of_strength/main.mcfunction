execute as @a run function it:tech/utils/detect/slot {slot:6, item_tag:sigil_of_strength, tag:item.sigil_of_strength}

execute as @a[scores={item.sigil_of_strength.active=1..}] run scoreboard players reset @s item.sigil_of_strength.active
execute as @a[tag=item.sigil_of_strength] run scoreboard players set @s item.sigil_of_strength.active 1
execute as @a[tag=item.sigil_of_strength] run effect give @s strength 1 0 false

tag @a[tag=item.sigil_of_strength] remove item.sigil_of_strength
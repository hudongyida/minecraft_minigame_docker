function it:tech/utils/detect/offhand {item_tag:sigil_of_shield, tag:item.sigil_of_shield.active}

scoreboard players reset @a[scores={item.sigil_of_shield.active=1}] item.sigil_of_shield.active
execute as @a[tag=item.sigil_of_shield.active] run scoreboard players set @s item.sigil_of_shield.active 1

tag @a[tag=item.sigil_of_shield.active] remove item.sigil_of_shield.active
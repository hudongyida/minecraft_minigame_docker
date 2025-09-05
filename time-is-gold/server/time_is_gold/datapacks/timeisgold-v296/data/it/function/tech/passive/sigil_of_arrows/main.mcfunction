execute as @a run function it:tech/utils/detect/slot {slot:8, item_tag:sigil_of_arrows, tag:item.sigil_of_arrows}

execute as @a[scores={item.sigil_of_arrows.active=1..}] run scoreboard players reset @s item.sigil_of_arrows.active
execute as @a[tag=item.sigil_of_arrows] run scoreboard players set @s item.sigil_of_arrows.active 1

tag @a[tag=item.sigil_of_arrows] remove item.sigil_of_arrows
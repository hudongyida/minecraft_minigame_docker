execute as @a run function it:tech/utils/detect/slot {slot:6, item_tag:sigil_of_leap, tag:item.sigil_of_leap.active}

execute as @a if score @s item.sigil_of_leap.safe_fall_distance matches 1.. run scoreboard players remove @s item.sigil_of_leap.safe_fall_distance 1
execute as @a unless entity @s[tag=item.sigil_of_leap.active] if score @s item.sigil_of_leap.jump matches 1.. run scoreboard players reset @s item.sigil_of_leap.jump
execute as @a unless entity @s[tag=item.sigil_of_leap.active] if score @s item.sigil_of_leap.stored_jump matches 1.. run scoreboard players reset @s item.sigil_of_leap.stored_jump

execute as @a[scores={item.sigil_of_leap.active=1..}] run scoreboard players reset @s item.sigil_of_leap.active
execute as @a[tag=item.sigil_of_leap.active] run scoreboard players set @s item.sigil_of_leap.active 1
execute as @a[tag=item.sigil_of_leap.active] at @s run function it:tech/passive/sigil_of_leap/functions/enhanced_jump

tag @a[tag=item.sigil_of_leap.active] remove item.sigil_of_leap.active
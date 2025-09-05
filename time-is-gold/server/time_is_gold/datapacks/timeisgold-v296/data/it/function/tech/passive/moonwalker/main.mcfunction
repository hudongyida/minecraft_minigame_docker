execute as @a run function it:tech/utils/detect/slot {item_tag:moonwalker, tag:item.moonwalker.active, slot:7}

execute as @a[scores={item.moonwalker.effect_check=1..}] run scoreboard players reset @s item.moonwalker.effect_check
execute as @a[tag=item.moonwalker.active] if predicate it:passive/moonwalker_input run scoreboard players set @s item.moonwalker.effect_check 1

tag @a[tag=item.moonwalker.active] remove item.moonwalker.active
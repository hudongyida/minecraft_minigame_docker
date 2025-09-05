execute as @a run function it:tech/utils/detect/slot {slot:5, item_tag:enlighten_knowledge, tag:item.enlighten_knowledge.active}

execute as @a[tag=item.enlighten_knowledge.active] store result score @s item.enlighten_knowledge.number_of_books run clear @s *[custom_data~{itemSortTag:["book"]}] 0
execute as @a[tag=item.enlighten_knowledge.active] if score @s item.enlighten_knowledge.number_of_books matches 20.. run scoreboard players set @s item.enlighten_knowledge.number_of_books 19
execute as @a[tag=item.enlighten_knowledge.active] if score @s item.enlighten_knowledge.number_of_books matches 1.. run scoreboard players operation @s item.enlighten_knowledge.damage_multiplier = @s item.enlighten_knowledge.number_of_books
execute as @a[tag=item.enlighten_knowledge.active] if score @s item.enlighten_knowledge.number_of_books matches 1.. run scoreboard players operation @s item.enlighten_knowledge.damage_multiplier *= #30 scoreboardConstant

execute as @a[tag=item.enlighten_knowledge.active] if predicate it:sneaking if items entity @s weapon.* *[custom_data~{item:enlighten_knowledge}] run function it:tech/passive/enlighten_knowledge/display_hud

execute as @a[tag=!item.enlighten_knowledge.active] if score @s item.enlighten_knowledge.number_of_books matches 1.. run scoreboard players reset @s item.enlighten_knowledge.number_of_books
execute as @a[tag=!item.enlighten_knowledge.active] if score @s item.enlighten_knowledge.damage_multiplier matches 1.. run scoreboard players reset @s item.enlighten_knowledge.damage_multiplier

execute as @a[tag=item.enlighten_knowledge.active] run tag @s remove item.enlighten_knowledge.active
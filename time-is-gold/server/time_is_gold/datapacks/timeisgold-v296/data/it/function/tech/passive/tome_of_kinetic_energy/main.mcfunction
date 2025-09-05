execute as @a run function it:tech/utils/detect/slot {item:book, item_tag:tome_of_kinetic_energy, tag:item.tome_of_kinetic_energy.active, slot:8}

execute as @a if score @s item.tome_of_kinetic_energy.active matches 1.. run scoreboard players reset @s item.tome_of_kinetic_energy.active
execute as @a[tag=item.tome_of_kinetic_energy.active] if predicate it:passive/tome_of_kinetic_energy_input run scoreboard players set @s item.tome_of_kinetic_energy.active 1
execute as @a[tag=item.tome_of_kinetic_energy.active] at @s run function it:tech/passive/tome_of_kinetic_energy/functions/speed
tag @a[tag=item.tome_of_kinetic_energy.active] remove item.tome_of_kinetic_energy.active





# Speed
#execute as @a[tag=item.tome_of_kinetic_energy.active] if predicate {"condition":"minecraft:all_of","terms":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"movement":{"speed":{"min":0.1,"max":5}}}}]} run scoreboard players set @s item.tome_of_kinetic_energy.speed 10
#execute as @a[tag=item.tome_of_kinetic_energy.active] if predicate {"condition":"minecraft:all_of","terms":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"movement":{"speed":{"min":5,"max":7}}}}]} run scoreboard players set @s item.tome_of_kinetic_energy.speed 50
#execute as @a[tag=item.tome_of_kinetic_energy.active] if predicate {"condition":"minecraft:all_of","terms":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"movement":{"speed":{"min":7,"max":10}}}}]} run scoreboard players set @s item.tome_of_kinetic_energy.speed 80
#execute as @a[tag=item.tome_of_kinetic_energy.active] if predicate {"condition":"minecraft:all_of","terms":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"movement":{"speed":{"min":10,"max":11}}}}]} run scoreboard players set @s item.tome_of_kinetic_energy.speed 100
#execute as @a[tag=item.tome_of_kinetic_energy.active] if predicate {"condition":"minecraft:all_of","terms":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"movement":{"speed":{"min":12,"max":13}}}}]} run scoreboard players set @s item.tome_of_kinetic_energy.speed 124
#execute as @a[tag=item.tome_of_kinetic_energy.active] if predicate {"condition":"minecraft:all_of","terms":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"movement":{"speed":{"min":13,"max":14}}}}]} run scoreboard players set @s item.tome_of_kinetic_energy.speed 150
#execute as @a[tag=item.tome_of_kinetic_energy.active] if predicate {"condition":"minecraft:all_of","terms":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"movement":{"speed":{"min":14,"max":15}}}}]} run scoreboard players set @s item.tome_of_kinetic_energy.speed 180
#execute as @a[tag=item.tome_of_kinetic_energy.active] if predicate {"condition":"minecraft:all_of","terms":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"movement":{"speed":{"min":15,"max":200}}}}]} run scoreboard players set @s item.tome_of_kinetic_energy.speed 200

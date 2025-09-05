execute as @e[type=item,nbt={Item:{id:"minecraft:magenta_dye",count:1,components:{"minecraft:custom_data":{item:uu_matter}}},OnGround:true}] run tag @s add item.uu_matter.active

execute as @e[type=item,tag=item.uu_matter.active] at @s if entity @e[type=item,nbt=!{Item:{id:"minecraft:magenta_dye",components:{"minecraft:custom_data":{item:uu_matter}}}},nbt=!{PickupDelay:32767s},distance=..1] run tag @s add item.uu_matter.used
execute as @e[type=item,tag=item.uu_matter.active] at @s as @e[type=item,nbt=!{Item:{id:"minecraft:magenta_dye",components:{"minecraft:custom_data":{item:uu_matter}}}},nbt=!{PickupDelay:32767s},distance=..1,sort=nearest,limit=1] run tag @s add item.uu_matter.copy_target
execute as @e[type=item,tag=item.uu_matter.copy_target] at @s at @e[type=item,tag=item.uu_matter.active,sort=nearest,limit=1] run summon item ~ ~ ~ {Tags:[item.uu_matter.copy_result],Item:{id:"minecraft:stone",count:1b}}
execute as @e[type=item,tag=item.uu_matter.copy_target] at @s run data modify entity @e[tag=item.uu_matter.copy_result,sort=nearest,limit=1] Item set from entity @s Item
execute as @e[type=item,tag=item.uu_matter.copy_target] at @s run data modify entity @e[tag=item.uu_matter.copy_result,sort=nearest,limit=1] Item.count set value 1b

# SFX
execute as @e[type=item,tag=item.uu_matter.copy_target] at @s at @e[tag=item.uu_matter.copy_result,sort=nearest,limit=1] run playsound minecraft:block.amethyst_block.step block @a ~ ~ ~ 1 1 1
execute as @e[type=item,tag=item.uu_matter.copy_target] at @s at @e[tag=item.uu_matter.copy_result,sort=nearest,limit=1] run playsound minecraft:block.amethyst_block.chime block @a ~ ~ ~ 1 0.5 1

# VFX
execute as @e[type=item,tag=item.uu_matter.copy_target] at @s at @e[tag=item.uu_matter.copy_result,sort=nearest,limit=1] run particle dust{color:[0.761, 0.0, 0.859], scale:1} ~ ~0.1 ~ 0.1 0.1 0.1 1 4 force

execute as @e[tag=item.uu_matter.copy_result] run tag @s remove item.uu_matter.copy_result
execute as @e[tag=item.uu_matter.copy_target] run tag @s remove item.uu_matter.copy_target

kill @e[type=item,tag=item.uu_matter.used]
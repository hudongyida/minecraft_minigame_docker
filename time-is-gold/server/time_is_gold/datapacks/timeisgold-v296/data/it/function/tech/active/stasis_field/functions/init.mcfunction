function system:vfx/expand_circle/init {range:5, step:3, R:0.200, G:0.800, B:0.800}
summon minecraft:marker ~ ~ ~ {Tags:["item.stasis_field.marker"],data:{line:0,self_uuid:0}}
execute as @n[type=marker,tag=item.stasis_field.marker,distance=..0.5] run function system:utils/uuid_tokenizer/init
execute as @n[type=marker,tag=item.stasis_field.marker,distance=..0.5] run data modify entity @s data.self_uuid set from storage timeisgold:uuid_tokenizer output

playsound minecraft:entity.evoker.cast_spell hostile @a ~ ~ ~ 1 0.8 0
playsound minecraft:item.trident.return player @a ~ ~ ~ 1 0.5 0
playsound minecraft:entity.warden.sonic_charge hostile @a ~ ~ ~ 1 0.7 0
playsound minecraft:entity.ender_dragon.growl hostile @a ~ ~ ~ 0.3 2 0
playsound minecraft:block.glass.break block @a ~ ~ ~ 1 0.5 0
playsound minecraft:entity.illusioner.mirror_move hostile @a ~ ~ ~ 1 1 0

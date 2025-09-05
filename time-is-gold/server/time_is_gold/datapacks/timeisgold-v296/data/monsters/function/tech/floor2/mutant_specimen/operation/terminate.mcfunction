tag @s remove mutant_specimen.ability_active
scoreboard players reset @s monsters.floor2.mutant_specimen.ability_check
scoreboard players operation @s monsters.floor2.mutant_specimen.cooldown = #SYSTEM monsters.floor2.mutant_specimen.cooldown

summon marker ~ ~ ~ {Tags:[mutant_specimen.marker.damage, mutant_specimen.marker.damage.uninitialized], data:{monsteruuid:""}}
function system:utils/uuid_tokenizer/init
execute at @s as @n[type=marker, tag=mutant_specimen.marker.damage.uninitialized] run function monsters:tech/floor2/mutant_specimen/operation/set_data

# SFX
execute at @s run playsound minecraft:entity.zombie.break_wooden_door hostile @a ~ ~ ~ 1.5 0.75
execute at @s run playsound minecraft:item.mace.smash_ground player @a ~ ~ ~ 1.5 0.5

# VFX
execute at @s run particle minecraft:block{block_state:{Name:"minecraft:stone"}} ~ ~0.25 ~ 0.5 0 0.5 0.2 32 force
execute at @s run function monsters:tech/floor2/mutant_specimen/operation/vfx
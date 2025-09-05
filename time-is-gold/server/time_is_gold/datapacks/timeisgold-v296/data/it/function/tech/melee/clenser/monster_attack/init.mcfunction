scoreboard players set @s item.clenser.potion_effect_count 0

execute as @s run function it:tech/utils/detect/potion_effect {potion:"minecraft:speed", scoreboard:"item.clenser.potion_effect_level", duration:0}
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run scoreboard players add @s item.clenser.potion_effect_count 1
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run effect clear @s minecraft:speed
execute as @s run function it:tech/utils/detect/potion_effect {potion:"minecraft:slowness", scoreboard:"item.clenser.potion_effect_level", duration:0}
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run scoreboard players add @s item.clenser.potion_effect_count 1
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run effect clear @s minecraft:slowness
execute as @s run function it:tech/utils/detect/potion_effect {potion:"minecraft:haste", scoreboard:"item.clenser.potion_effect_level", duration:0}
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run scoreboard players add @s item.clenser.potion_effect_count 1
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run effect clear @s minecraft:haste
execute as @s run function it:tech/utils/detect/potion_effect {potion:"minecraft:mining_fatigue", scoreboard:"item.clenser.potion_effect_level", duration:0}
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run scoreboard players add @s item.clenser.potion_effect_count 1
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run effect clear @s minecraft:mining_fatigue
execute as @s run function it:tech/utils/detect/potion_effect {potion:"minecraft:strength", scoreboard:"item.clenser.potion_effect_level", duration:0}
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run scoreboard players add @s item.clenser.potion_effect_count 1
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run effect clear @s minecraft:strength
execute as @s run function it:tech/utils/detect/potion_effect {potion:"minecraft:jump_boost", scoreboard:"item.clenser.potion_effect_level", duration:0}
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run scoreboard players add @s item.clenser.potion_effect_count 1
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run effect clear @s minecraft:jump_boost
execute as @s run function it:tech/utils/detect/potion_effect {potion:"minecraft:nausea", scoreboard:"item.clenser.potion_effect_level", duration:0}
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run scoreboard players add @s item.clenser.potion_effect_count 1
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run effect clear @s minecraft:nausea
execute as @s run function it:tech/utils/detect/potion_effect {potion:"minecraft:regeneration", scoreboard:"item.clenser.potion_effect_level", duration:0}
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run scoreboard players add @s item.clenser.potion_effect_count 1
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run effect clear @s minecraft:regeneration
execute as @s run function it:tech/utils/detect/potion_effect {potion:"minecraft:resistance", scoreboard:"item.clenser.potion_effect_level", duration:0}
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run scoreboard players add @s item.clenser.potion_effect_count 1
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run effect clear @s minecraft:resistance
execute as @s run function it:tech/utils/detect/potion_effect {potion:"minecraft:fire_resistance", scoreboard:"item.clenser.potion_effect_level", duration:0}
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run scoreboard players add @s item.clenser.potion_effect_count 1
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run effect clear @s minecraft:fire_resistance
execute as @s run function it:tech/utils/detect/potion_effect {potion:"minecraft:water_breathing", scoreboard:"item.clenser.potion_effect_level", duration:0}
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run scoreboard players add @s item.clenser.potion_effect_count 1
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run effect clear @s minecraft:water_breathing
#execute as @s run function it:tech/utils/detect/potion_effect {potion:"minecraft:invisibility", scoreboard:"item.clenser.potion_effect_level", duration:0}
#execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run scoreboard players add @s item.clenser.potion_effect_count 1
#execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run effect clear @s minecraft:invisibility
execute as @s run function it:tech/utils/detect/potion_effect {potion:"minecraft:blindness", scoreboard:"item.clenser.potion_effect_level", duration:0}
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run scoreboard players add @s item.clenser.potion_effect_count 1
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run effect clear @s minecraft:blindness
execute as @s run function it:tech/utils/detect/potion_effect {potion:"minecraft:night_vision", scoreboard:"item.clenser.potion_effect_level", duration:0}
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run scoreboard players add @s item.clenser.potion_effect_count 1
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run effect clear @s minecraft:night_vision
execute as @s run function it:tech/utils/detect/potion_effect {potion:"minecraft:hunger", scoreboard:"item.clenser.potion_effect_level", duration:0}
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run scoreboard players add @s item.clenser.potion_effect_count 1
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run effect clear @s minecraft:hunger
execute as @s run function it:tech/utils/detect/potion_effect {potion:"minecraft:weakness", scoreboard:"item.clenser.potion_effect_level", duration:0}
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run scoreboard players add @s item.clenser.potion_effect_count 1
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run effect clear @s minecraft:weakness
execute as @s run function it:tech/utils/detect/potion_effect {potion:"minecraft:poison", scoreboard:"item.clenser.potion_effect_level", duration:0}
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run scoreboard players add @s item.clenser.potion_effect_count 1
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run effect clear @s minecraft:poison
execute as @s run function it:tech/utils/detect/potion_effect {potion:"minecraft:wither", scoreboard:"item.clenser.potion_effect_level", duration:0}
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run scoreboard players add @s item.clenser.potion_effect_count 1
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run effect clear @s minecraft:wither
execute as @s run function it:tech/utils/detect/potion_effect {potion:"minecraft:health_boost", scoreboard:"item.clenser.potion_effect_level", duration:0}
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run scoreboard players add @s item.clenser.potion_effect_count 1
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run effect clear @s minecraft:health_boost
execute as @s run function it:tech/utils/detect/potion_effect {potion:"minecraft:absorption", scoreboard:"item.clenser.potion_effect_level", duration:0}
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run scoreboard players add @s item.clenser.potion_effect_count 1
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run effect clear @s minecraft:absorption
execute as @s run function it:tech/utils/detect/potion_effect {potion:"minecraft:saturation", scoreboard:"item.clenser.potion_effect_level", duration:0}
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run scoreboard players add @s item.clenser.potion_effect_count 1
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run effect clear @s minecraft:saturation
#execute as @s run function it:tech/utils/detect/potion_effect {potion:"minecraft:glowing", scoreboard:"item.clenser.potion_effect_level", duration:0}
#execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run scoreboard players add @s item.clenser.potion_effect_count 1
#execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run effect clear @s minecraft:glowing
execute as @s run function it:tech/utils/detect/potion_effect {potion:"minecraft:levitation", scoreboard:"item.clenser.potion_effect_level", duration:0}
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run scoreboard players add @s item.clenser.potion_effect_count 1
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run effect clear @s minecraft:levitation
execute as @s run function it:tech/utils/detect/potion_effect {potion:"minecraft:luck", scoreboard:"item.clenser.potion_effect_level", duration:0}
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run scoreboard players add @s item.clenser.potion_effect_count 1
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run effect clear @s minecraft:luck
#execute as @s run function it:tech/utils/detect/potion_effect {potion:"minecraft:bad_luck", scoreboard:"item.clenser.potion_effect_level", duration:0}
#execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run scoreboard players add @s item.clenser.potion_effect_count 1
#execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run effect clear @s minecraft:bad_luck
execute as @s run function it:tech/utils/detect/potion_effect {potion:"minecraft:slow_falling", scoreboard:"item.clenser.potion_effect_level", duration:0}
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run scoreboard players add @s item.clenser.potion_effect_count 1
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run effect clear @s minecraft:slow_falling
execute as @s run function it:tech/utils/detect/potion_effect {potion:"minecraft:conduit_power", scoreboard:"item.clenser.potion_effect_level", duration:0}
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run scoreboard players add @s item.clenser.potion_effect_count 1
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run effect clear @s minecraft:conduit_power
execute as @s run function it:tech/utils/detect/potion_effect {potion:"minecraft:dolphins_grace", scoreboard:"item.clenser.potion_effect_level", duration:0}
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run scoreboard players add @s item.clenser.potion_effect_count 1
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run effect clear @s minecraft:dolphins_grace
execute as @s run function it:tech/utils/detect/potion_effect {potion:"minecraft:bad_omen", scoreboard:"item.clenser.potion_effect_level", duration:0}
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run scoreboard players add @s item.clenser.potion_effect_count 1
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run effect clear @s minecraft:bad_omen
execute as @s run function it:tech/utils/detect/potion_effect {potion:"minecraft:hero_of_the_village", scoreboard:"item.clenser.potion_effect_level", duration:0}
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run scoreboard players add @s item.clenser.potion_effect_count 1
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run effect clear @s minecraft:hero_of_the_village
execute as @s run function it:tech/utils/detect/potion_effect {potion:"minecraft:darkness", scoreboard:"item.clenser.potion_effect_level", duration:0}
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run scoreboard players add @s item.clenser.potion_effect_count 1
execute as @s if score @s item.clenser.potion_effect_level matches 1..10 run effect clear @s minecraft:darkness

execute as @s if score @s item.clenser.potion_effect_count matches 1.. run tag @s add item.clenser.damage_target

# Debug
#execute as @s run tellraw @a [{"text":"Potion Effect Count: "},{"score":{"name":"@s","objective":"item.clenser.potion_effect_count"}}]

# SFX
execute as @s[tag=item.clenser.damage_target] run playsound minecraft:block.enchantment_table.use block @a ~ ~ ~ 1 1

# VFX
execute as @s[tag=item.clenser.damage_target] at @s run particle bubble_pop ~ ~1 ~ 0.25 0.5 0.25 0.1 50

execute as @s[tag=item.clenser.damage_target] run scoreboard players operation @s item.clenser.potion_effect_count *= #3 scoreboardConstant
$execute as @s[tag=item.clenser.damage_target] at @s run summon marker ~ ~ ~ {Tags:["item.clenser.marker.temp"],data:{value:0, playerid:$(playerid), knockback:0}}
execute as @s[tag=item.clenser.damage_target] at @s store result entity @n[type=marker,tag=item.clenser.marker.temp,distance=..0.5] data.value double 1 run scoreboard players get @s item.clenser.potion_effect_count
execute as @s[tag=item.clenser.damage_target] at @s run function system:combat/modified_damage/magic/init with entity @e[type=marker,tag=item.clenser.marker.temp,sort=nearest,limit=1,distance=..0.5] data

execute as @s[tag=item.clenser.damage_target] run tag @s remove item.clenser.damage_target
kill @e[type=marker,tag=item.clenser.marker.temp]

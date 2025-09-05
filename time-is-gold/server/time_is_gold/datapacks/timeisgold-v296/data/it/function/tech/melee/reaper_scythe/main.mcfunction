# Cooldowns
function it:tech/utils/cooldown/tick {scoreboard:item.reaper_scythe.cooldown}
function it:tech/utils/cooldown/tick {scoreboard:item.reaper_scythe.delay}

# Unveil
execute as @a if score @s item.reaper_scythe.veils matches 1.. run scoreboard players remove @s item.reaper_scythe.veils 1
execute as @a if score @s item.reaper_scythe.veils matches ..0 run tag @s add item.reaper_scythe.veils_end

execute as @a[tag=item.reaper_scythe.veils_end] run scoreboard players reset @s item.reaper_scythe.veils
execute as @a[tag=item.reaper_scythe.veils_end] run function system:utils/uuid_tokenizer/init
execute as @a[tag=item.reaper_scythe.veils_end] run data modify storage timeisgold:function_api stack append value {UUID:0}
execute as @a[tag=item.reaper_scythe.veils_end] run data modify storage timeisgold:function_api stack[-1].UUID set from storage timeisgold:uuid_tokenizer output
execute as @a[tag=item.reaper_scythe.veils_end] run function it:tech/melee/reaper_scythe/gimmicks/portal_teleport with storage timeisgold:function_api stack[-1]
execute as @a[tag=item.reaper_scythe.veils_end] run data remove storage timeisgold:function_api stack[-1]
execute as @a[tag=item.reaper_scythe.veils_end] run function it:tech/melee/reaper_scythe/gimmicks/grant_potion
execute as @a[tag=item.reaper_scythe.veils_end] run tag @s remove item.reaper_scythe.veils_end
execute as @a[tag=item.reaper_scythe.reset] run tag @s remove item.reaper_scythe.reset

# Veiled
execute as @a if score @s item.reaper_scythe.veils matches 1.. run tag @s add item.reaper_scythe.veil
execute as @a[tag=item.reaper_scythe.veil] run effect give @s speed 1 0 true
execute as @a[tag=item.reaper_scythe.veil] at @s run particle minecraft:dust{color:[0.0,0.0,0.0],scale:0.5} ~ ~1 ~ .4 .3 .4 0 1 force
execute as @a[tag=item.reaper_scythe.veil] at @s anchored eyes positioned ^-.5 ^ ^ run particle soul ~ ~-.5 ~ .1 .3 .1 0.05 1 force
execute as @a[tag=item.reaper_scythe.veil] run scoreboard players operation @s item.reaper_scythe.damage_sum += @s item.reaper_scythe.damage_dealt
execute as @a[tag=item.reaper_scythe.veil] run tag @s remove item.reaper_scythe.veil

# Portal's FX
execute as @e[type=marker, tag=item.reaper_scythe.portal] at @s run function it:tech/melee/reaper_scythe/gimmicks/portal_particle

# Damage Potion
execute as @a if score @s item.reaper_scythe.damage_dealt matches 1.. run scoreboard players reset @s item.reaper_scythe.damage_dealt
execute as @a[scores={item.reaper_scythe.damage_sum=1..}] unless items entity @s container.* netherite_hoe[minecraft:custom_data~{item:reaper_scythe}] unless items entity @s weapon.offhand netherite_hoe[minecraft:custom_data~{item:reaper_scythe}] run scoreboard players reset @s item.reaper_scythe.damage_sum

# UI
execute as @a if score @s item.reaper_scythe.veils matches 1.. run function system:ui/bar/set {base:"scoreboardConstant",base_target:"#200",value:"item.reaper_scythe.veils",value_target:"@s",invert:0,item:"reaper_scythe"}
execute as @a unless score @s item.reaper_scythe.veils matches 1.. run function system:ui/bar/set {base:"item.reaper_scythe.cooldown",base_target:"#MAX_VALUE",value:"item.reaper_scythe.cooldown",value_target:"@s",invert:1,item:"reaper_scythe"}

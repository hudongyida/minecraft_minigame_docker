function it:tech/utils/cooldown/tick {scoreboard:item.plasma_sabre.cooldown}
execute as @a[predicate=system:player] run function it:tech/melee/plasma_sabre/display_ui
execute as @a if items entity @s weapon.mainhand diamond_sword[custom_data~{item:plasma_sabre}] run function it:tech/melee/plasma_sabre/update_attribute

# SFX
execute as @a if score @s item.plasma_sabre.active_tick matches 1 at @s run playsound entity.zombie_villager.cure hostile @s ~ ~ ~ 0.5 1 0
# VFX
execute as @a if score @s item.plasma_sabre.active_tick matches 1.. at @s anchored eyes positioned ^ ^ ^ if items entity @s weapon.mainhand diamond_sword[custom_data~{item:plasma_sabre}] run particle minecraft:trial_spawner_detection_ominous ^-.3 ^ ^.2 .1 .2 .1 0 1 force
execute as @a unless score @s item.plasma_sabre.active_tick matches 1.. at @s if items entity @s weapon.mainhand diamond_sword[custom_data~{item:plasma_sabre},enchantment_glint_override=true] run item modify entity @s weapon.mainhand [{"function":"minecraft:set_components","components":{"minecraft:enchantment_glint_override":false}}]
execute as @a if score @s item.plasma_sabre.active_tick matches 1.. at @s if items entity @s weapon.mainhand diamond_sword[custom_data~{item:plasma_sabre}] run item modify entity @s weapon.mainhand [{"function":"minecraft:set_components","components":{"minecraft:enchantment_glint_override":true}}]
# Arrow-intercept
execute as @e[type=marker,tag=item.plasma_sabre.intercept.particle] at @s run function it:tech/melee/plasma_sabre/particle

execute as @a if items entity @s weapon.mainhand diamond_sword[custom_data~{item:plasma_sabre}] if score @s item.plasma_sabre.active_tick matches 1.. at @s run function it:tech/melee/plasma_sabre/intercept_arrows
execute as @a if score @s item.plasma_sabre.active_tick matches 1.. run scoreboard players remove @s item.plasma_sabre.active_tick 1
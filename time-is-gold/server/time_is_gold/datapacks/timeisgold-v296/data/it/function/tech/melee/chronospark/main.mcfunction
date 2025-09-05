# Charge Reset
execute as @a if score @s item.chronospark.harmony_charge_tick matches 1.. unless score @s item.chronospark.hold_check matches 1 run scoreboard players reset @s item.chronospark.harmony_charge_tick
execute as @a[tag=item.chronospark.init_sound] unless score @s item.chronospark.hold_check matches 1 run tag @s remove item.chronospark.init_sound
execute as @a if score @s item.chronospark.hold_check matches 1 run scoreboard players reset @s item.chronospark.hold_check

# VFX
execute as @a if score @s item.chronospark.harmony_charge matches 6.. at @s anchored eyes positioned ^ ^ ^ if items entity @s weapon.mainhand golden_shovel[custom_data~{item:chronospark}] run particle minecraft:trial_spawner_detection ^-.3 ^ ^.2 .1 .2 .1 0 1 force

# 易伤
execute as @e[tag=monster] if score @s item.chronospark.fragility matches 1.. run scoreboard players remove @s item.chronospark.fragility 1
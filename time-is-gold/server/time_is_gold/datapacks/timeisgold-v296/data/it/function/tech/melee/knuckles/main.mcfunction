# Attack Particle

# Cooldown
function it:tech/utils/cooldown/tick {scoreboard:item.knuckles.cooldown}

# UI
execute as @a[predicate=system:player] if score @s item.knuckles.Charge matches 1.. run function system:ui/bar/set {value:item.knuckles.Charge, value_target:"@s", base:item.knuckles.Charge, base_target:"#MAX_VALUE", invert:0, item:knuckles}
execute as @a[predicate=system:player] unless score @s item.knuckles.Charge matches 1.. run function system:ui/bar/set {value:item.knuckles.cooldown, value_target:"@s", base:item.knuckles.cooldown, base_target:"#MAX_VALUE", invert:0, item:knuckles}

# Attack Charge
execute as @a if score @s item.knuckles.Charge matches 1.. if score @s item.knuckles.Charge = @s item.knuckles.Charge_pre-value run function it:tech/melee/knuckles/charge_reset
execute as @a if score @s item.knuckles.Charge matches 1.. run scoreboard players operation @s item.knuckles.Charge_pre-value = @s item.knuckles.Charge

# End Attack
execute as @a if score @s item.knuckles.bypass_knockback matches 1.. run scoreboard players remove @s item.knuckles.bypass_knockback 1
execute as @a if score @s item.knuckles.bypass_knockback matches 0 run attribute @s minecraft:explosion_knockback_resistance modifier remove item.knuckles.knockback_resistance
execute as @a if score @s item.knuckles.bypass_knockback matches 0 run scoreboard players reset @s item.knuckles.bypass_knockback

execute as @a if function it:tech/melee/knuckles/detect/on_wind run scoreboard players set @s item.knuckles.in_dash 1
execute as @a if score @s item.knuckles.in_dash matches 1 run attribute @s minecraft:explosion_knockback_resistance modifier add item.knuckles.knockback_resistance 1 add_value
execute as @a if score @s item.knuckles.in_dash matches 1 unless function it:tech/melee/knuckles/detect/on_wind run scoreboard players set @s item.knuckles.bypass_knockback 3
execute as @a if score @s item.knuckles.in_dash matches 1 unless function it:tech/melee/knuckles/detect/on_wind run function it:tech/melee/knuckles/remove

# Remove in 1s
execute as @a if function it:tech/melee/knuckles/detect/on_wind run scoreboard players add @s item.knuckles.air_time 1
execute as @a if score @s item.knuckles.air_time matches 5.. run function it:tech/melee/knuckles/remove
execute as @a if score @s item.knuckles.air_time matches 5.. run scoreboard players reset @s item.knuckles.air_time

# Remove on block
#execute as @e[type=wind_charge,tag=item.knuckles.dash] at @s unless block ~ ~2 ~ #air on origin run function it:tech/melee/knuckles/remove
#execute as @e[type=wind_charge,tag=item.knuckles.dash] at @s unless block ~ ~1 ~ #air on origin run function it:tech/melee/knuckles/remove
# execute if score @s knuckles.undertanding matches INF run escape boards but we can't block that

# FX
execute as @e[type=wind_charge,tag=item.knuckles.dash] on origin at @s anchored eyes positioned ^ ^ ^3 run particle minecraft:gust ~ ~ ~ 0 0 0 0.05 0 force
execute as @a if score @s item.knuckles.Charge matches 1.. unless score @s item.knuckles.sound_max_tick matches 10 run scoreboard players set @s item.knuckles.sound_max_tick 10
execute as @a if score @s item.knuckles.Charge matches 1.. at @s run function system:sfx/dynamic_pitch/init {value:item.knuckles.Charge, max:item.knuckles.sound_max_tick, function:"it:tech/melee/knuckles/sfx"}

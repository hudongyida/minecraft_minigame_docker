scoreboard players set @s item.paranoia.fragility_tick 600
scoreboard players set @s item.paranoia.sink_amplifier_tick 600
function it:tech/utils/effect/sink/init {value:3}

# SFX
execute at @s run playsound entity.zombie_villager.cure hostile @a ~ ~ ~ 0.5 2

# VFX
execute at @s run particle entity_effect{color:[0.0,0.22,0.77,1.0]} ~ ~1 ~ 0.4 0.4 0.4 0 10 force
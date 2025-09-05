tag @s add item.zero_point.stun_particle
function it:tech/utils/effect/stun/init {value:40}

# SFX
execute at @s run playsound entity.experience_orb.pickup player @a ~ ~ ~

# VFX
execute at @s run function system:vfx/expand_circle/init {R:0.141, G:0.541, B:1.000, range:1, step:2}
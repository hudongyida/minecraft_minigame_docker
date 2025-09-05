scoreboard players set @s item.omega_earth.sword_tick 60
execute as @s run data modify entity @s data.selfuuid0 set from entity @s UUID[0]
execute as @s run data modify entity @s data.selfuuid1 set from entity @s UUID[1]
execute as @s run data modify entity @s data.selfuuid2 set from entity @s UUID[2]
execute as @s run data modify entity @s data.selfuuid3 set from entity @s UUID[3]
execute as @s at @s run function it:tech/melee/omega_earth/raycast/summon_sword with entity @s data
$tag @s remove item.omega_earth.marker.sword.init_target.$(playerid)

# SFX
execute as @s at @s run playsound block.beacon.power_select player @a ~ ~ ~ 1 2 0

# VFX
execute as @s at @s run function system:vfx/clock_rotate/init {radius:3, duration:60, distance:1, clock_r:0.75, clock_g:0.75, clock_b:0.75}
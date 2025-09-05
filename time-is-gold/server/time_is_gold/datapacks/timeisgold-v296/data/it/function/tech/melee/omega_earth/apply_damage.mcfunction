# 실행 인자: item.omega_earth.marker.sword 태그를 갖는 마커

$execute as @s at @s positioned ~-2.5 ~-3 ~-2.5 as @e[tag=monster,dx=5,dy=33,dz=5] run function system:combat/modified_damage/melee/init {playerid:$(playerid), value:50, knockback:0}
$execute as @e[type=item_display,tag=item.omega_earth.sword_display.$(selfuuid0).$(selfuuid1).$(selfuuid2).$(selfuuid3),limit=1] run scoreboard players set @s item.omega_earth.display_remove_tick 60

# SFX
execute as @s at @s positioned ~ ~ ~ run playsound block.anvil.land block @a ~ ~ ~ 1 0.5 0

# VFX
execute as @s at @s positioned ~ ~ ~ run particle explosion_emitter ~ ~ ~ 1 1 1 0.1 4 normal

execute as @s run kill @s
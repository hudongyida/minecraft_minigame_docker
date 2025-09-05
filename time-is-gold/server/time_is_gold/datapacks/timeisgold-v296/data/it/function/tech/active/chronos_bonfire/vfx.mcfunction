# 실행 인자: item.chronos_bonfire.marker.placed 태그가 있는 마커

scoreboard players remove @s item.chronos_bonfire.tick 1
$execute as $(displayuuid) at @s run rotate @s ~10 ~

execute at @s run rotate @s ~5 ~
execute at @s run particle soul_fire_flame ^ ^ ^10 0 0 0 0 1 force
execute at @s run particle soul_fire_flame ^ ^ ^-10 0 0 0 0 1 force
execute at @s run particle soul_fire_flame ^10 ^ ^ 0 0 0 0 1 force
execute at @s run particle soul_fire_flame ^-10 ^ ^ 0 0 0 0 1 force
execute at @s run particle dust{color:[0.001, 0.555, 0.555], scale:1} ~ ~ ~ 4 0 4 0 10 force

execute at @s run rotate @s ~5 ~
execute at @s run particle soul_fire_flame ^ ^ ^10 0 0 0 0 1 force
execute at @s run particle soul_fire_flame ^ ^ ^-10 0 0 0 0 1 force
execute at @s run particle soul_fire_flame ^10 ^ ^ 0 0 0 0 1 force
execute at @s run particle soul_fire_flame ^-10 ^ ^ 0 0 0 0 1 force
execute at @s run particle dust{color:[0.001, 0.555, 0.555], scale:1} ~ ~ ~ 4 0 4 0 10 force
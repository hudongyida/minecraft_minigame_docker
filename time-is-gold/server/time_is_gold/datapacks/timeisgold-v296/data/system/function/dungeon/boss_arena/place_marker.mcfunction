# 보스전 구역 구성 마커 배치

execute as @e[type=armor_stand,tag=dungeon.bossfight.armor_stand.boss_arena] at @s run function system:dungeon/reset/clear_boss_plot
execute as @e[type=armor_stand,tag=dungeon.bossfight.armor_stand.exit_passage] at @s run function system:dungeon/reset/clear_boss_plot
execute as @e[type=armor_stand,tag=dungeon.bossfight.armor_stand.next_floor_portal] at @s run function system:dungeon/reset/clear_boss_plot

kill @e[type=armor_stand,tag=dungeon.bossfight.armor_stand.boss_arena]
kill @e[type=armor_stand,tag=dungeon.bossfight.armor_stand.exit_passage]
kill @e[type=armor_stand,tag=dungeon.bossfight.armor_stand.next_floor_portal]

execute positioned ~ ~ ~ run summon armor_stand ~ ~ ~ {Tags:[dungeon.bossfight.armor_stand.boss_arena],Marker:true,Invulnerable:true,NoGravity:true}
$execute positioned ~ ~ ~$(z) run summon armor_stand ~ ~ ~ {Tags:[dungeon.bossfight.armor_stand.exit_passage],Marker:true,Invulnerable:true,NoGravity:true}
$execute positioned ~ ~ ~$(z) run summon armor_stand ~ ~ ~5 {Tags:[dungeon.bossfight.armor_stand.next_floor_portal],Marker:true,Invulnerable:true,NoGravity:true}

$execute positioned ~ ~ ~$(z) positioned ~ ~ ~5 positioned ~$(center_x_offset) ~ ~$(portal_z_center) run summon armor_stand ~ ~ ~ {Tags:[dungeon.room.center],Marker:true,Invulnerable:true,NoGravity:true}
$execute as @a[scores={playerid=$(playerid)}] at @s unless function it:tech/ranged/telestrator/monster_attack/tp_place_check run tag @s add item.telestrator.ability_failed

# 보스 및 고정형 몬스터 제외
execute as @s[tag=boss] run tag @s add item.telestrator.teleport_failed
execute as @s[tag=monster.fixed] run tag @s add item.telestrator.teleport_failed

$execute as @s[tag=!item.telestrator.teleport_failed] if entity @p[scores={playerid=$(playerid)},tag=!item.telestrator.ability_failed] at @p[scores={playerid=$(playerid)}] anchored eyes positioned ^ ^ ^2 run tp @s ^ ^ ^

# SFX
execute as @s at @s run playsound minecraft:item.chorus_fruit.teleport player @a ~ ~ ~ 1 1.5
execute as @a[tag=item.telestrator.ability_failed] at @s run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 0.5 0.5

# VFX
execute as @s[tag=!item.telestrator.teleport_failed] at @s run particle minecraft:dust{color:[0.561, 0.0, 0.733], scale:1} ~ ~1 ~ 0.33 0.33 0.33 1 8 force
execute as @s[tag=item.telestrator.teleport_failed] at @s run particle minecraft:dust{color:[0.706, 0.0, 0.0], scale:1} ~ ~1 ~ 0.5 0.5 0.5 1 16 force
execute as @a[tag=item.telestrator.ability_failed] at @s run title @s actionbar [{"text":"无法将该怪物传送到指定位置！","color":"red"}]

tag @s[tag=item.telestrator.teleport_failed] remove item.telestrator.teleport_failed
tag @a[tag=item.telestrator.ability_failed] remove item.telestrator.ability_failed
# 실행 인자: bosses.automaton.pattern5.init 태그가 붙은 오토마톤

data modify storage timeisgold:function_api stack append value {bossuuid:""}
execute as @s on passengers as @s[type=marker,tag=boss.automaton.marker.AI] run data modify storage timeisgold:function_api stack[-1].bossuuid set from entity @s data.bossuuid

execute at @s at @n[type=marker,tag=boss.arena_center,distance=..50] run function bosses:tech/automaton/pattern5/operation/init_player with storage timeisgold:function_api stack[-1]
execute at @s at @n[type=marker,tag=boss.arena_center,distance=..50] run function bosses:tech/automaton/pattern5/operation/init_random with storage timeisgold:function_api stack[-1]

data remove storage timeisgold:function_api stack[-1]
tag @s remove bosses.automaton.pattern5.init

# SFX
execute at @s as @a at @s run playsound entity.zombie.break_wooden_door hostile @s ~ ~ ~ 0.4 0.5
execute at @s as @a at @s run playsound minecraft:block.copper_bulb.break block @s ~ ~ ~ 2 0.5
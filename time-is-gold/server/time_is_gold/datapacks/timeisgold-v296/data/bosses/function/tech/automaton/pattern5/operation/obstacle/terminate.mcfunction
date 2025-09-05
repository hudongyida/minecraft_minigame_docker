# 실행 인자: @e[type=marker,tag=bosses.automaton.pattern5.marker.obstacle]
# $(bossuuid)   - 오토마톤 보스 엔티티 UUID Token
# $(selfuuid)   - 장애물 마커 UUID Token

execute at @s positioned ~-4 ~-1 ~-4 as @a[predicate=system:player,dx=8,dy=16,dz=8] run tag @s add bosses.automaton.pattern5.damage_target
execute at @s positioned ~-4 ~-1 ~-4 store result score @e[tag=bosses.automaton.pattern5.damage_target,dx=8,dy=16,dz=8] bosses.automaton.pattern5.pos.origin.x run data get entity @s Pos[0] 100
execute at @s positioned ~-4 ~-1 ~-4 store result score @e[tag=bosses.automaton.pattern5.damage_target,dx=8,dy=16,dz=8] bosses.automaton.pattern5.pos.origin.z run data get entity @s Pos[2] 100
execute at @s positioned ~-4 ~-1 ~-4 as @e[tag=bosses.automaton.pattern5.damage_target,dx=8,dy=16,dz=8] run function bosses:tech/automaton/pattern5/operation/obstacle/get_distance

$execute as @e[tag=bosses.automaton.pattern5.damage_target] run function bosses:tech/automaton/pattern5/operation/obstacle/apply_damage {bossuuid:"$(bossuuid)"}
$execute at @s positioned ~-1 ~-1 ~-1 run kill @e[type=block_display,tag=bosses.automaton.pattern5.block_display.obstacle.$(selfuuid),dx=3,dy=128,dz=3]

tag @e[tag=bosses.automaton.pattern5.damage_target] remove bosses.automaton.pattern5.damage_target
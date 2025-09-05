# 실행 인자: 오토마톤 보스 엔티티
# $(step)   - 1틱당 증가할 반경 블록 수
# $(tick)   - 충격파 지속 시간
# 충격파 최대 반경 = step * tick

$execute positioned ~ ~ ~ run summon marker ~ ~ ~ {Tags:[bosses.automaton.pattern4.marker.shockwave_circular.center], data:{step:$(step), tick:$(tick), bossuuid:"", selfuuid:"", radius:0d, angle:0d, inner_circle:0d, outer_circle:0d, y_pos:0d}}
execute as @s run function system:utils/uuid_tokenizer/init
execute positioned ~ ~ ~ as @n[type=marker,tag=bosses.automaton.pattern4.marker.shockwave_circular.center,distance=..0.5] run data modify entity @s data.bossuuid set from storage timeisgold:uuid_tokenizer output
execute positioned ~ ~ ~ as @n[type=marker,tag=bosses.automaton.pattern4.marker.shockwave_circular.center,distance=..0.5] run function system:utils/uuid_tokenizer/init
execute positioned ~ ~ ~ as @n[type=marker,tag=bosses.automaton.pattern4.marker.shockwave_circular.center,distance=..0.5] run data modify entity @s data.selfuuid set from storage timeisgold:uuid_tokenizer output

$execute positioned ~ ~ ~ as @n[type=marker,tag=bosses.automaton.pattern4.marker.shockwave_circular.center,distance=..0.5] run scoreboard players set @s bosses.automaton.pattern4.shockwave_max_life_tick $(tick)
execute positioned ~ ~ ~ as @n[type=marker,tag=bosses.automaton.pattern4.marker.shockwave_circular.center,distance=..0.5] run scoreboard players set @s bosses.automaton.pattern4.shockwave_life_tick 1

# SFX
execute as @s at @s run playsound entity.iron_golem.death neutral @a ~ ~ ~ 2 1 0
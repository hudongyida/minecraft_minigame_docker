# 실행 인자: 오토마톤 AI 마커(오토마톤 위에 타고 있음)

execute unless data entity @s data.targetuuidlist if entity @p[predicate=system:player,distance=..50] run data modify entity @s data.targetuuidlist set from entity @p[predicate=system:player,distance=..50] UUID
execute as @s on vehicle unless data entity @s AngryAt run tag @s add bosses.automaton.pattern1.change_target
$execute as @s on vehicle if entity @s[nbt=!{AngryAt:$(targetuuidlist)}] run tag @s add bosses.automaton.pattern1.change_target

$execute as @s on vehicle if entity @s[tag=bosses.automaton.pattern1.change_target] run data modify entity @s AngryAt set value $(targetuuidlist)
execute as @s on vehicle run tag @s[tag=bosses.automaton.pattern1.change_target] remove bosses.automaton.pattern1.change_target
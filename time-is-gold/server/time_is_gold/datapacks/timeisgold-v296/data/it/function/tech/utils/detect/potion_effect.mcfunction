# 엔티티에게 적용된 포션 효과와 레벨을 감지하는 함수
# $(potion)     - 포션 효과의 ID
# $(scoreboard) - 포션 효과의 레벨을 저장할 스코어보드 (amplifier 값 + 1)
# $(duration)   - 포션 효과를 감지하기 위한 최소 시간

$execute as @s store result score @s $(scoreboard) run data get entity @s active_effects[{id:"$(potion)"}]
$execute as @s if score @s $(scoreboard) matches 1.. if data entity @s active_effects[{id:"$(potion)"}].amplifier store result score @s $(scoreboard) run data get entity @s active_effects[{id:"$(potion)"}].amplifier
$execute as @s if score @s $(scoreboard) matches 1.. if data entity @s active_effects[{id:"$(potion)"}].amplifier run scoreboard players add @s $(scoreboard) 1
$execute as @s if score @s $(scoreboard) matches 1.. store result score @s item.utils.potion_effect.duration run data get entity @s active_effects[{id:"$(potion)"}].duration 1
$execute as @s if score @s $(scoreboard) matches 1.. unless score @s item.utils.potion_effect.duration matches $(duration).. run scoreboard players set @s $(scoreboard) 0
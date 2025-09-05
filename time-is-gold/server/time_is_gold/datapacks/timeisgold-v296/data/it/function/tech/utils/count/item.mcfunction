# scoreboard는 따로 만들어야함
# @s 쓰려면 player = 1

#예시
#execute as @a[tag=item.use_vdd] run scoreboard objectives add vvd_operation dummy
#execute as @a[tag=item.use_vdd] run function it:tech/utils/count/item {player:1, objective:vvd_operation}
#execute as @a[tag=item.use_vdd] if score @s vvd_operation matches 2.. run tag @s add item.use_vdd_give
#execute as @a[tag=item.use_vdd] run scoreboard objectives remove vvd_operation

### 이 함수는 Deprecated 되었습니다. 아직도 이 함수를 쓰는 구현이 있다면 당장 수정해주세요.

scoreboard objectives add count dummy
execute store result score @s count run data get entity @s Inventory[{Slot:-106b}].Count
$scoreboard players set $(player)_checkcash count $(player)
$execute if score $(player)_checkcash count matches 1 run scoreboard players operation @s $(objective) = @s count
$execute unless score $(player)_checkcash count matches 1 run scoreboard players operation $(player) $(objective) = @s count
scoreboard objectives remove count
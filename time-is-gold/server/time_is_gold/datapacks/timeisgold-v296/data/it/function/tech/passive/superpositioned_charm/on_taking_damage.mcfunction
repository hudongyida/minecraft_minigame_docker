# 실행 인자: 중첩의 부적을 보유하고 데미지를 받은 플레이어

execute as @s run function it:tech/utils/detect/in_inventory {item:"superpositioned_charm", output:"item.superpositioned_charm.damage_taken"}
execute as @s[tag=!item.superpositioned_charm.damage_taken] run return fail

# 플레이어 수 확인
scoreboard players reset #SYSTEM item.superpositioned_charm.player_count
execute as @a[scores={item.superpositioned_charm.active=1}] run scoreboard players add #SYSTEM item.superpositioned_charm.player_count 1
execute unless score #SYSTEM item.superpositioned_charm.player_count matches 2.. run return fail

# 데미지 계산
scoreboard players operation #SYSTEM item.superpositioned_charm.split_damage = @s system.time.damage_taken
scoreboard players operation #SYSTEM item.superpositioned_charm.split_damage /= #SYSTEM item.superpositioned_charm.player_count

# 데미지 적용
scoreboard players operation @s system.time.damage_taken = #SYSTEM item.superpositioned_charm.split_damage
execute as @a[predicate=system:player,tag=!item.superpositioned_charm.damage_taken,scores={item.superpositioned_charm.ability_check=1..}] run function it:tech/passive/superpositioned_charm/split_damage

tag @s remove item.superpositioned_charm.damage_taken
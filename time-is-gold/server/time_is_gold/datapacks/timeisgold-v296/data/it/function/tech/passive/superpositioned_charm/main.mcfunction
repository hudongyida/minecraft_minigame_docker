execute as @a run function it:tech/utils/detect/in_inventory {item:"superpositioned_charm", output:"item.superpositioned_charm.active"}

scoreboard players reset @a[scores={item.superpositioned_charm.active=1}] item.superpositioned_charm.active
execute as @a[tag=item.superpositioned_charm.active] run scoreboard players set @s item.superpositioned_charm.active 1

# 다른 플레이어에게 이전받은 데미지가 적용되지 않은 틱 예외처리
execute as @a[tag=item.superpositioned_charm.active] unless score @s item.superpositioned_charm.ability_check matches 1 unless score @s system.time.damage_taken matches 1.. run scoreboard players set @s item.superpositioned_charm.ability_check 1

tag @a[tag=item.superpositioned_charm.active] remove item.superpositioned_charm.active
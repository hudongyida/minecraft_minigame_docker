# 실행 인자: 중첩의 부적을 보유하고 데미지를 받은 플레이어가 아닌 다른 플레이어

scoreboard players operation @s system.time.damage_taken += #SYSTEM item.superpositioned_charm.split_damage
scoreboard players set @s item.superpositioned_charm.ability_check 0
damage @s 0.001 out_of_world
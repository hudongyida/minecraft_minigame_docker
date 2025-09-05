# 실행 인자: 체력 감소 효과를 적용받을 몬스터

# 이미 이 아이템의 효과를 받고 있는 경우 -> 지속시간만 갱신
execute if score @s item.tome_of_hyper_epsilon_delta.tick matches 1.. run scoreboard players set @s item.tome_of_hyper_epsilon_delta.tick 300
execute if score @s item.tome_of_hyper_epsilon_delta.tick matches 300.. run return fail

# 아이템 효과 적용 및 체력 데이터 스코어보드에 저장
execute store result score @s item.tome_of_hyper_epsilon_delta.max_hp run attribute @s max_health get 1
execute store result score @s item.tome_of_hyper_epsilon_delta.prev_hp run data get entity @s Health 1
scoreboard players set @s item.tome_of_hyper_epsilon_delta.tick 300
data modify entity @s Health set value 1
attribute @s max_health base set 1
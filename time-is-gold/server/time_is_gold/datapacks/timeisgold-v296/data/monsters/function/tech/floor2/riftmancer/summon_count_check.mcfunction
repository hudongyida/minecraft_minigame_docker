# 실행 인자: 차원술사가 소환한 벡스

execute as @s on origin if score @s monsters.floor2.riftmancer.max_summon matches 1.. run tag @s add riftmancer.summon_operation
execute as @s on origin if score @s monsters.floor2.riftmancer.max_summon matches 1.. run return 1

return fail
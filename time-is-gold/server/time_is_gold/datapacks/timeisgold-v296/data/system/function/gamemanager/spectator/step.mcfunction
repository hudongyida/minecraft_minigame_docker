# 실행 인자: 관전자 + 사망한 플레이어

# 관전하고 있는 플레이어가 없는 경우 다른 플레이어 관전
execute at @s if entity @a[predicate=system:player] unless entity @a[predicate=system:player,distance=..0.1] run function system:gamemanager/spectator/init
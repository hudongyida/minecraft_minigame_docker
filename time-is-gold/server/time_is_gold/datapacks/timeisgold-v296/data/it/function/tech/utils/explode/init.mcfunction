# 인자의 위치에 폭발을 구현하는 함수
# 주의: 실제로 터지지 않음.

# IMPACT = (1 - distance / 3 * power)
# Damage = 7 * power * (impact + impact**2) + 1
# MAX distance = 25

# 실행 인자: 폭발 위치 중앙 엔티티
#  - power: 폭발 파워
#  - playerid: 플레이어 ID

$execute positioned ~ ~ ~ run summon marker ~ ~ ~ {Tags:["item.utils.explode.center_marker"],data:{playerid:$(playerid),power:$(power)}}
execute positioned ~ ~ ~ as @n[type=minecraft:marker,tag=item.utils.explode.center_marker,distance=..1] run function it:tech/utils/explode/calculate_impact with entity @s data

kill @n[type=minecraft:marker,tag=item.utils.explode.center_marker,distance=..1]
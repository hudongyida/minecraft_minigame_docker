# 실행 인자: 크리퍼
# $(playerid)   - 아이템을 사용한 플레이어의 playerid

data modify entity @s ignited set value true

# attacker 수정 후 보상 함수 실행
$damage @s 0 out_of_world by @p[scores={playerid=$(playerid)}]
function monsters:reward/init
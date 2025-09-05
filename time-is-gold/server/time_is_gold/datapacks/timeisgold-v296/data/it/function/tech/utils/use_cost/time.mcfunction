#실행 인자: 플레이어
#형식: function it:tech/utils/use_cost/time {cost:}

# 20240724 - 나중에 구현할 코스트 할인 기능 구현을 위해, cost에 '초' 값을 쓰는 대신 timeX10 형식(10배)로 입력하도록 수정

$scoreboard players remove @s[predicate=system:player] timeX10 $(cost)
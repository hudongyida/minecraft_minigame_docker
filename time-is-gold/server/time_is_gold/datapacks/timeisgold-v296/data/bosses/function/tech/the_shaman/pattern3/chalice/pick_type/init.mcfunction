# 실행 인자: 3번 패턴을 사용하는 제사장 보스/분신 엔티티

execute if entity @s[tag=boss.berserk] run return run random value 1..4
execute if entity @s[tag=!boss.berserk] run return run random value 1..3
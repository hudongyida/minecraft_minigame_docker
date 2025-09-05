# 실행 인자: 타이머에 시간을 추가할 플레이어
# $(value)  - 추가할 시간

$scoreboard players set @s system.time.bonus_time.apply $(value)
scoreboard players operation @s system.time.bonus_time.apply += @s system.time.bonus_time.deltaX10
scoreboard players operation @s system.time.bonus_time.apply *= @s system.time.bonus_time.multiplier
scoreboard players operation @s system.time.bonus_time.apply /= #100 scoreboardConstant
scoreboard players operation @s timeX10 += @s system.time.bonus_time.apply

# Summary 데이터 기록
scoreboard players operation @s system.gamemanager.summary.time_earned += @s system.time.bonus_time.apply

return run scoreboard players get @s system.time.bonus_time.apply
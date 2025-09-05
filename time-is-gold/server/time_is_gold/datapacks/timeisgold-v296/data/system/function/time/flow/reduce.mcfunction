# 실행 인자: 시간 감소 주기에 해당하는 플레이어

scoreboard players set @s system.time.reduction 10

# 시간 감소 주기가 1보다 작을 경우 감소값 곱연산 적용
execute if score @s system.time.flow_period < #1 scoreboardConstant run scoreboard players operation @s system.time.reduction.temp = @s system.time.flow_period
execute if score @s system.time.flow_period < #1 scoreboardConstant run scoreboard players remove @s system.time.reduction.temp 1
execute if score @s system.time.flow_period < #1 scoreboardConstant run scoreboard players operation @s system.time.reduction.temp *= -1 scoreboardConstant
execute if score @s system.time.flow_period < #1 scoreboardConstant run scoreboard players operation @s system.time.reduction *= @s system.time.reduction.temp

# 뒤틀림 시간 감소 배율 적용
execute store result score @s system.time.reduction.temp run function system:dungeon/warp/warped_time_reduction
scoreboard players operation @s system.time.reduction *= @s system.time.reduction.temp

scoreboard players operation @s timeX10 -= @s system.time.reduction

scoreboard players set @s system.time.flow_tick 0
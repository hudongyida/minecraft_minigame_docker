# 실행 인자: @a

execute as @s[predicate=system:player] run scoreboard players add @s system.time.flow_tick 1
execute as @s[predicate=system:player] if score @s system.time.flow_tick >= @s system.time.flow_period unless entity @s[scores={system.time.stasis=1..}] run function system:time/flow/reduce
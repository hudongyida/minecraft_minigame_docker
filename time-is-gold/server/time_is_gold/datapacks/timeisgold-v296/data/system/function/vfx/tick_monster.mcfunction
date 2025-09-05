# 실행 인자: @e[tag=monster]

execute as @s[scores={combat.fragility=1..}] at @s run function system:vfx/stat_effect/fragility
execute as @s[tag=monster.warped] at @s run function system:vfx/stat_effect/warped
execute as @s[scores={combat.stun=1..}] at @s run function system:vfx/stat_effect/stun
execute as @s[scores={combat.sink=1..}] at @s run function system:vfx/stat_effect/sink
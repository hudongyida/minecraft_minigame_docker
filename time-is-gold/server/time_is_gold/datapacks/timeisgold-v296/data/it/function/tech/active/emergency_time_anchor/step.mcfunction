#  실행 인자: @e[type=armor_stand,tag=item.emergency_time_anchor.armor_stand.anchor]

execute as @s rotated as @s run rotate @s ~10 ~

execute if score @s item.emergency_time_anchor.tick matches 1.. run scoreboard players remove @s item.emergency_time_anchor.tick 1
execute if score @s item.emergency_time_anchor.tick matches 0 run kill @s
execute as @s at @s as @a[predicate=system:player,distance=..6] run scoreboard players set @s system.time.stasis 1

# VFX
execute as @s at @s run particle dust{color:[0.475, 0.992, 0.235], scale:1} ^ ^ ^6 0 0 0 0 1 force
execute as @s at @s run particle dust{color:[0.475, 0.992, 0.235], scale:1} ^ ^ ^-6 0 0 0 0 1 force
execute as @s at @s run particle dust{color:[0.475, 0.992, 0.235], scale:1} ^6 ^ ^ 0 0 0 0 1 force
execute as @s at @s run particle dust{color:[0.475, 0.992, 0.235], scale:1} ^-6 ^ ^ 0 0 0 0 1 force
execute as @s at @s run particle dust{color:[0.475, 0.992, 0.235], scale:1} ~ ~ ~ 1 1 1 0.1 5 force
# 화염 중첩
# 인자: @s

#형식: function it:tech/utils/effect/ignite/init {firetick:}


execute as @s store result score @s item.utils.Ignite.firetick run data get entity @s Fire
$execute as @s run scoreboard players add @s item.utils.Ignite.firetick $(firetick)
execute as @s run data modify storage timeisgold:function_api stack append value {scoretick:0}
execute as @s store result storage timeisgold:function_api stack[-1].scoretick int 1 run scoreboard players get @s item.utils.Ignite.firetick
execute as @s run function it:tech/utils/effect/ignite/modify with storage timeisgold:function_api stack[-1]
execute at @s run data remove storage timeisgold:function_api stack[-1]



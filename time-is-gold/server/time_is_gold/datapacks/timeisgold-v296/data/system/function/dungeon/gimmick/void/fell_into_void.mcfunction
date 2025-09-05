tp @s @n[type=marker,tag=dungeon.room.entrance]
damage @s 0.001 out_of_world

# SFX
execute at @s run playsound minecraft:entity.zombie.attack_iron_door block @s ~ ~ ~ 1 2 0

# 추락 알림
data modify storage timeisgold:function_api stack append value {"translate":"dungeon.gimmick.void.fell", fallback:"You fell into the void and lost %ss!", with:["0"], color:"red"}

execute if score #SYSTEM dungeon.floor matches 0.. run data modify storage timeisgold:function_api stack[-1].with[0] set value "30"
execute if score #SYSTEM dungeon.floor matches 0.. run scoreboard players remove @s timeX10 300

title @s actionbar [{"storage": "timeisgold:function_api", "nbt":"stack[-1]", "interpret": true}]

data remove storage timeisgold:function_api stack[-1]
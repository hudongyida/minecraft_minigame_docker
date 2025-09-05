execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.flute master @s ~ ~ ~ 10000 0
tellraw @a[tag=playing] [{"text":"完成游戏的玩家数量不足.","color":"red"}]
function end:players
tellraw @s [{"text":"通过丢出背包中的物品来复述你看到的音符. 每个音符有15秒的时间.","color":"aqua"}]]

scoreboard players reset @s ptp_drop

clear @s

playsound minecraft:block.note_block.flute master @s ~ ~ ~ 1000 0.7

scoreboard players set @s ptp_played 0
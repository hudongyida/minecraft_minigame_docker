tellraw @a[tag=playing,team=gamt] [{"selector":"@s"},{"text":"没有回答, 它已被标记为错误.","color":"red"}]
playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 0
scoreboard players add @s gamt_tally_i 1
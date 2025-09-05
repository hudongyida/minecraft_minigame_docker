# 실행 인자: 점프한 플레이어

scoreboard players set @s item.noble_leap.tick 60
scoreboard players add @s item.noble_leap.stack 1
scoreboard players operation @s item.noble_leap.stack < #40 scoreboardConstant
scoreboard players set @s item.noble_leap.damage_bonus 1
scoreboard players operation @s item.noble_leap.damage_bonus *= @s item.noble_leap.stack
scoreboard players reset @s item.noble_leap.jump

# SFX
execute at @s run playsound minecraft:entity.rabbit.jump neutral @s ~ ~ ~ 4 1
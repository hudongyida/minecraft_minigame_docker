# 패턴 종류 및 지속 시간 설정
execute store result score @s bosses.the_shaman.pattern5.type run function bosses:tech/the_shaman/pattern5/patterns/pick_pattern_type

execute if score @s bosses.the_shaman.pattern5.type matches 1 run scoreboard players set @s bosses.the_shaman.pattern5.tick 360
execute if score @s bosses.the_shaman.pattern5.type matches 2 run scoreboard players set @s bosses.the_shaman.pattern5.tick 240
execute if score @s bosses.the_shaman.pattern5.type matches 3 run scoreboard players set @s bosses.the_shaman.pattern5.tick 360
execute if score @s bosses.the_shaman.pattern5.type matches 4 run scoreboard players set @s bosses.the_shaman.pattern5.tick 240
execute if score @s bosses.the_shaman.pattern5.type matches 5 run scoreboard players set @s bosses.the_shaman.pattern5.tick 240
execute if score @s bosses.the_shaman.pattern5.type matches 6 run scoreboard players set @s bosses.the_shaman.pattern5.tick 240
execute if score @s bosses.the_shaman.pattern5.type matches 7 run scoreboard players set @s bosses.the_shaman.pattern5.tick 240
execute if score @s bosses.the_shaman.pattern5.type matches 8 run scoreboard players set @s bosses.the_shaman.pattern5.tick 360
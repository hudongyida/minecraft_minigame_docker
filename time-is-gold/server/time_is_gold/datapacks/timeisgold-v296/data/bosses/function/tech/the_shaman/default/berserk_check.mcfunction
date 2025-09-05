# 실행 인자: 광폭화 상태가 아닌 제사장 보스

execute store result score @s bosses.the_shaman.default.max_hp run attribute @s max_health get 1
execute store result score @s bosses.the_shaman.default.current_hp run data get entity @s Health 1
scoreboard players operation @s bosses.the_shaman.default.hp_ratio = @s bosses.the_shaman.default.max_hp
scoreboard players operation @s bosses.the_shaman.default.hp_ratio /= @s bosses.the_shaman.default.current_hp

execute if score @s bosses.the_shaman.default.hp_ratio matches 2.. run tag @s add boss.berserk
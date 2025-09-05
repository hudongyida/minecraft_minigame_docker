# HPの最大値
execute store result score #UI max_hp run data get storage settings: player.hp
# HP/10
scoreboard players set #GameManager reserve_1 10
scoreboard players operation #UI max_hp_10 = #UI max_hp
scoreboard players operation #UI max_hp_10 /= #GameManager reserve_1
# HP/80
scoreboard players set #GameManager reserve_1 80
scoreboard players operation #UI max_hp_80 = #UI max_hp
scoreboard players operation #UI max_hp_80 /= #GameManager reserve_1

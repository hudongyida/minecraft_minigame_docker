# MPの最大値
execute store result score #UI max_mp run data get storage settings: player.mp
# MP/10
scoreboard players set #GameManager reserve_1 10
scoreboard players operation #UI max_mp_10 = #UI max_mp
scoreboard players operation #UI max_mp_10 /= #GameManager reserve_1
# MP/80
scoreboard players set #GameManager reserve_1 80
scoreboard players operation #UI max_mp_80 = #UI max_mp
scoreboard players operation #UI max_mp_80 /= #GameManager reserve_1

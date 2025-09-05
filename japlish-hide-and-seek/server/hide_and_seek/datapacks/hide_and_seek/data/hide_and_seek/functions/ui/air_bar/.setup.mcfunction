# デフォルト酸素量
scoreboard players set #UI max_air_default 300
# カスタム酸素量
execute store result score #UI max_air_custom run data get storage settings: player.air
# カスタム酸素量/10
scoreboard players set #GameManager reserve_1 10
scoreboard players operation #UI max_air_custom_10 = #UI max_air_custom 
scoreboard players operation #UI max_air_custom_10 /= #GameManager reserve_1
# 気泡がはぜるタイミング
scoreboard players set #GameManager reserve_2 9
scoreboard players operation #UI bubble_pop = #UI max_air_custom_10
scoreboard players operation #UI bubble_pop /= #GameManager reserve_1
scoreboard players operation #UI bubble_pop *= #GameManager reserve_2
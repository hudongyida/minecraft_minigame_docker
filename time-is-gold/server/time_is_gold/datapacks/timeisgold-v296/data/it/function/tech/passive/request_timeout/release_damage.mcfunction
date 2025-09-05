# 저장된 데미지 방출

scoreboard players operation @s system.time.damage_taken += @s item.request_timeout.damage_stored
scoreboard players set @s item.request_timeout.nullify_check 0
damage @s 0.001 out_of_world

# 방출되는 데미지 표시
scoreboard players operation @s item.request_timeout.damage_integer = @s item.request_timeout.damage_stored
scoreboard players operation @s item.request_timeout.damage_decimal = @s item.request_timeout.damage_stored
scoreboard players operation @s item.request_timeout.damage_integer /= #10 scoreboardConstant
scoreboard players operation @s item.request_timeout.damage_decimal %= #10 scoreboardConstant
title @s actionbar [{"text": "你的请求超时已释放 ","color": "dark_purple"}, {"score":{"name": "@s","objective": "item.request_timeout.damage_integer"},"color": "red"}, {"text": ".","color": "red"}, {"score":{"name": "@s","objective": "item.request_timeout.damage_decimal"},"color": "red"}, {"text": " 点伤害","color": "red"}, {"text": "给自己！","color": "dark_purple"}]

# SFX
execute at @s run playsound block.enchantment_table.use block @s ~ ~ ~ 0.5 1 0.5

scoreboard players set @s item.request_timeout.damage_stored 0
scoreboard players set @s item.request_timeout.tick 20
tag @s remove item.request_timeout.release_damage
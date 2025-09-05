scoreboard players operation @s item.request_timeout.damage_integer = @s item.request_timeout.damage_stored
scoreboard players operation @s item.request_timeout.damage_decimal = @s item.request_timeout.damage_stored
scoreboard players operation @s item.request_timeout.damage_integer /= #10 scoreboardConstant
scoreboard players operation @s item.request_timeout.damage_decimal %= #10 scoreboardConstant
title @s actionbar [{"text": "存储伤害: ","color": "dark_purple"}, {"score":{"name": "@s","objective": "item.request_timeout.damage_integer"},"color": "red"}, {"text": ".","color": "red"}, {"score":{"name": "@s","objective": "item.request_timeout.damage_decimal"},"color": "red"}, {"text": " 点伤害","color": "red"}]
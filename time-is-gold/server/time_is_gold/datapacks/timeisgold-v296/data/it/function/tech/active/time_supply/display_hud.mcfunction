scoreboard players operation @s item.time_supply.hud.damage_integer = @s item.time_supply.damage_stored
scoreboard players operation @s item.time_supply.hud.damage_decimal = @s item.time_supply.damage_stored
scoreboard players operation @s item.time_supply.hud.damage_integer /= #10 scoreboardConstant
scoreboard players operation @s item.time_supply.hud.damage_decimal %= #10 scoreboardConstant
title @s actionbar [{"translate": "item.time_supply.hud.time_stored"}, {"score":{"name": "@s","objective": "item.time_supply.hud.damage_integer"},"color": "green"}, {"text": ".","color": "green"}, {"score":{"name": "@s","objective": "item.time_supply.hud.damage_decimal"},"color": "green"}, {"text": "s","color": "green"}]
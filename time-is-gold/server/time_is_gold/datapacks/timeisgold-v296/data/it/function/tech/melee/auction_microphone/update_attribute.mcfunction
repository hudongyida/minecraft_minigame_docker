item modify entity @s weapon.mainhand it:melee/auction_microphone_update
function it:tech/utils/lore/attack_damage/init {offset:-2}

scoreboard players operation @s item.auction_microphone.auction_count_previous = @s item.auction_microphone.auction_count

# SFX
execute if score @s item.auction_microphone.auction_count matches 0 at @s run playsound block.anvil.land block @s ~ ~ ~ 0.3 2 0.3

# HUD
execute if score @s item.auction_microphone.auction_count matches 0 run title @s actionbar [{"text": "拍卖已过期！","color": "red"}]
execute if score @s item.auction_microphone.auction_count matches 1..4 run title @s actionbar [{"text": "当前价格：","color": "gray"},{"score":{"name": "@s","objective": "item.auction_microphone.auction_count"},"color": "#ffffff"}]
execute if score @s item.auction_microphone.auction_count matches 5..9 run title @s actionbar [{"text": "当前价格：","color": "gray"},{"score":{"name": "@s","objective": "item.auction_microphone.auction_count"},"color": "#55ff55"}]
execute if score @s item.auction_microphone.auction_count matches 10..14 run title @s actionbar [{"text": "当前价格：","color": "gray"},{"score":{"name": "@s","objective": "item.auction_microphone.auction_count"},"color": "#5555ff"}]
execute if score @s item.auction_microphone.auction_count matches 15 run title @s actionbar [{"text": "当前价格：","color": "gray"},{"score":{"name": "@s","objective": "item.auction_microphone.auction_count"},"color": "#aa00aa"}]
execute if score @s item.auction_microphone.auction_count matches 16 run title @s actionbar [{"text": "当前价格：","color": "gray"},{"score":{"name": "@s","objective": "item.auction_microphone.auction_count"},"color": "#ffaa00"}]
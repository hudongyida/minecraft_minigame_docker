execute if score @s item.auction_microphone_pro.auction_tick matches 25.. run return fail

scoreboard players set @s item.auction_microphone_pro.auction_tick 30
scoreboard players add @s item.auction_microphone_pro.auction_count 3
scoreboard players operation @s item.auction_microphone_pro.auction_count < #30 scoreboardConstant

execute if score @s item.auction_microphone_pro.auction_count matches 3 run function it:tech/utils/use_cost/time {cost:30}
execute at @s run function it:tech/melee/auction_microphone_pro/update_attribute
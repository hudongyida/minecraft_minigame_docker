execute if score @s item.auction_microphone.auction_tick matches 15.. run return fail

scoreboard players set @s item.auction_microphone.auction_tick 20
scoreboard players add @s item.auction_microphone.auction_count 2
scoreboard players operation @s item.auction_microphone.auction_count < #16 scoreboardConstant

execute if score @s item.auction_microphone.auction_count matches 2 run function it:tech/utils/use_cost/time {cost:30}
execute at @s run function it:tech/melee/auction_microphone/update_attribute
execute at @s run function it:tech/utils/lore/attack_damage/init {offset:-2}
tag @s remove item.auction_microphone.attack
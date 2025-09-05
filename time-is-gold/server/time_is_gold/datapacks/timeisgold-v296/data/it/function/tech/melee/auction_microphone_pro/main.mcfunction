execute as @a if items entity @s weapon.mainhand *[custom_data~{item:auction_microphone_pro}] run tag @s add item.auction_microphone_pro.held

execute as @a[tag=!item.auction_microphone_pro.held] if score @s item.auction_microphone_pro.auction_tick matches 1.. run scoreboard players set @s item.auction_microphone_pro.auction_tick 0
execute as @a[tag=item.auction_microphone_pro.held] if score @s item.auction_microphone_pro.auction_tick matches 0 run scoreboard players set @s item.auction_microphone_pro.auction_count 0

execute as @a[tag=item.auction_microphone_pro.held] unless score @s item.auction_microphone_pro.auction_count = @s item.auction_microphone_pro.auction_count_previous run function it:tech/melee/auction_microphone_pro/update_attribute

tag @a[tag=item.auction_microphone_pro.held] remove item.auction_microphone_pro.held
execute as @a[scores={item.auction_microphone_pro.auction_tick=1..}] run scoreboard players remove @s item.auction_microphone_pro.auction_tick 1
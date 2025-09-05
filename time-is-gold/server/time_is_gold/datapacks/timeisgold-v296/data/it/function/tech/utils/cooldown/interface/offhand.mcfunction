scoreboard objectives remove item.utils.cooldown.interface.max_cooldown
scoreboard objectives remove item.utils.cooldown.interface.current_cooldown
scoreboard objectives remove item.utils.cooldown.interface.has_cooldown

tag @s remove item.utils.cooldown.interface.mainhand
tag @s add item.utils.cooldown.interface.offhand
execute as @s[tag=item.utils.cooldown.interface.offhand] at @s run data modify entity @n[tag=item.utils.cooldown.interface.marker,limit=1] data.item_name set from entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".item

execute as @s at @s run function it:tech/utils/cooldown/interface/display with entity @n[tag=item.utils.cooldown.interface.marker,limit=1] data
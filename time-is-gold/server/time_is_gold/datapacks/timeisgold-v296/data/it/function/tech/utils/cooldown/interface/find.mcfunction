execute at @s run summon marker ~ ~ ~ {Tags:["item.utils.cooldown.interface.marker"],data:{item_name:""}}

execute as @s[tag=item.utils.cooldown.interface.mainhand] at @s run data modify entity @n[tag=item.utils.cooldown.interface.marker,limit=1] data.item_name set from entity @s SelectedItem.components."minecraft:custom_data".item
execute as @s[tag=item.utils.cooldown.interface.offhand] at @s run data modify entity @n[tag=item.utils.cooldown.interface.marker,limit=1] data.item_name set from entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".item

execute as @s at @s run function it:tech/utils/cooldown/interface/display with entity @n[tag=item.utils.cooldown.interface.marker,limit=1] data
execute as @s at @s run kill @n[tag=item.utils.cooldown.interface.marker,limit=1]

tag @s[tag=item.utils.cooldown.interface.mainhand] remove item.utils.cooldown.interface.mainhand
tag @s[tag=item.utils.cooldown.interface.offhand] remove item.utils.cooldown.interface.offhand
tag @s remove item.utils.cooldown.interface.held
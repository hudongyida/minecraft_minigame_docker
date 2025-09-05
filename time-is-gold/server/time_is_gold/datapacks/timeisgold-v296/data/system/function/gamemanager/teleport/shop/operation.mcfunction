execute unless entity @s[predicate=system:player] run return fail

execute if items entity @s container.17 *[custom_data~{item:"teleport_to_shop",enabled:false}] if entity @n[type=armor_stand,tag=dungeon.room.center,scores={dungeon.structure_id=0,dungeon.room_id=0..}] run function system:gamemanager/teleport/shop/button/enabled
execute if items entity @s container.17 *[custom_data~{item:"teleport_to_shop",enabled:true}] unless entity @n[type=armor_stand,tag=dungeon.room.center,scores={dungeon.structure_id=0,dungeon.room_id=0..}] run function system:gamemanager/teleport/shop/button/disabled

scoreboard players remove @s[scores={system.teleport.shop.cooldown=1..}] system.teleport.shop.cooldown 1

execute if items entity @s container.17 *[custom_data~{item:"teleport_to_shop"}] run return fail

execute at @s run playsound ui.button.click master @s ~ ~ ~ 1 1 1

execute if entity @n[type=armor_stand,tag=dungeon.room.center,scores={dungeon.structure_id=0,dungeon.room_id=0..}] run tag @s add system.teleport.shop.enabled
execute unless entity @n[type=armor_stand,tag=dungeon.room.center,scores={dungeon.structure_id=0,dungeon.room_id=0..}] run tag @s add system.teleport.shop.disabled

execute as @s if entity @s[tag=system.teleport.shop.enabled] run function system:gamemanager/teleport/shop/click_event/teleport
execute as @s if entity @s[tag=system.teleport.shop.disabled] run function system:gamemanager/teleport/shop/click_event/notify

execute at @s as @n[type=item,distance=..5] if data entity @s Item.components."minecraft:custom_data".teleport_shop_throw run kill @s
clear @s *[custom_data~{item:"teleport_to_shop"}]
execute if items entity @s player.cursor *[custom_data~{item:"teleport_to_shop"}] run item replace entity @s player.cursor with air
function it:tech/utils/force_drop/slot {slot:17, delay:1}

execute if entity @s[tag=system.teleport.shop.enabled] run function system:gamemanager/teleport/shop/button/enabled
execute if entity @s[tag=system.teleport.shop.disabled] run function system:gamemanager/teleport/shop/button/disabled

execute as @s[tag=system.teleport.shop.enabled] run tag @s remove system.teleport.shop.enabled
execute as @s[tag=system.teleport.shop.disabled] run tag @s remove system.teleport.shop.disabled
execute as @s[tag=system.teleport.shop.init] run tag @s remove system.teleport.shop.init
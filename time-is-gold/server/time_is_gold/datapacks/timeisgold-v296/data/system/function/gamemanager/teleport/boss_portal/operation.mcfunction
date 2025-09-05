execute unless entity @s[predicate=system:player] run return fail

execute if items entity @s container.16 *[custom_data~{item:"teleport_to_boss_portal",enabled:false}] if entity @n[type=marker,tag=dungeon.teleport_boss_portal] run function system:gamemanager/teleport/boss_portal/button/enabled
execute if items entity @s container.16 *[custom_data~{item:"teleport_to_boss_portal",enabled:true}] unless entity @n[type=marker,tag=dungeon.teleport_boss_portal] run function system:gamemanager/teleport/boss_portal/button/enabled

scoreboard players remove @s[scores={system.teleport.boss_portal.cooldown=1..}] system.teleport.boss_portal.cooldown 1

execute if items entity @s container.16 *[custom_data~{item:"teleport_to_boss_portal"}] run return fail

execute at @s run playsound ui.button.click master @s ~ ~ ~ 1 1 1

execute if entity @n[type=marker,tag=dungeon.teleport_boss_portal] run tag @s add system.teleport.boss_portal.enabled
execute unless entity @n[type=marker,tag=dungeon.teleport_boss_portal] run tag @s add system.teleport.boss_portal.disabled

execute as @s if entity @s[tag=system.teleport.boss_portal.enabled] run function system:gamemanager/teleport/boss_portal/click_event/teleport
execute as @s if entity @s[tag=system.teleport.boss_portal.disabled] run function system:gamemanager/teleport/boss_portal/click_event/notify

execute at @s as @n[type=item,distance=..5] if data entity @s Item.components."minecraft:custom_data".teleport_boss_portal_throw run kill @s
clear @s *[custom_data~{item:"teleport_to_boss_portal"}]
execute if items entity @s player.cursor *[custom_data~{item:"teleport_to_boss_portal"}] run item replace entity @s player.cursor with air
function it:tech/utils/force_drop/slot {slot:16, delay:1}

execute if entity @s[tag=system.teleport.boss_portal.enabled] run function system:gamemanager/teleport/boss_portal/button/enabled
execute if entity @s[tag=system.teleport.boss_portal.disabled] run function system:gamemanager/teleport/boss_portal/button/disabled

execute as @s[tag=system.teleport.boss_portal.enabled] run tag @s remove system.teleport.boss_portal.enabled
execute as @s[tag=system.teleport.boss_portal.disabled] run tag @s remove system.teleport.boss_portal.disabled
execute as @s[tag=system.teleport.boss_portal.init] run tag @s remove system.teleport.boss_portal.init
scoreboard objectives add item.utils.cooldown.interface.max_cooldown dummy
scoreboard objectives add item.utils.cooldown.interface.current_cooldown dummy
scoreboard objectives add item.utils.cooldown.interface.has_cooldown dummy

$execute store result score @s item.utils.cooldown.interface.max_cooldown run scoreboard players get $max_cooldown item.$(item_name).cooldown
$execute store result score @s item.utils.cooldown.interface.current_cooldown run scoreboard players get @s item.$(item_name).cooldown

# Mainhand Coooldown == Null: Offhand
$store success score @s item.utils.cooldown.interface.has_cooldown run scoreboard players get @s item.$(item_name).cooldown
execute as @s[tag=item.utils.cooldown.interface.mainhand] if score @s item.utils.cooldown.interface.has_cooldown matches ..0 run return run function it:tech/utils/cooldown/interface/offhand
#execute as @s[tag=item.utils.cooldown.interface.mainhand] if score @s item.utils.cooldown.interface.current_cooldown matches ..0 run return run function it:tech/utils/cooldown/interface/offhand

scoreboard players operation @s item.utils.cooldown.interface.max_cooldown += #10 scoreboardConstant
scoreboard players operation @s item.utils.cooldown.interface.current_cooldown *= #1000 scoreboardConstant
scoreboard players operation @s item.utils.cooldown.interface.current_cooldown /= @s item.utils.cooldown.interface.max_cooldown

xp set @s 125 levels

execute at @s run summon marker ~ ~ ~ {Tags:["item.utils.cooldown.interface.xp_marker"],data:{point:0}}
execute at @s store result entity @n[tag=item.utils.cooldown.interface.xp_marker,limit=1] data.point int 1 run scoreboard players get @s item.utils.cooldown.interface.current_cooldown
execute at @s run function it:tech/utils/cooldown/interface/set_xp with entity @n[tag=item.utils.cooldown.interface.xp_marker,limit=1] data
kill @n[type=marker,tag=item.utils.cooldown.interface.xp_marker,limit=1]

scoreboard objectives remove item.utils.cooldown.interface.max_cooldown
scoreboard objectives remove item.utils.cooldown.interface.current_cooldown
scoreboard objectives remove item.utils.cooldown.interface.has_cooldown
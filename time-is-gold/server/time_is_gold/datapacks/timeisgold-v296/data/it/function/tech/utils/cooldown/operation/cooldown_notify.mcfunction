$scoreboard players operation @s item.utils.cooldown.remaining_seconds = @s $(scoreboard)
scoreboard players operation @s item.utils.cooldown.remaining_seconds /= #20 scoreboardConstant

$scoreboard players operation @s item.utils.cooldown.remaining_ticks = @s $(scoreboard)
scoreboard players operation @s item.utils.cooldown.remaining_ticks %= #20 scoreboardConstant
scoreboard players operation @s item.utils.cooldown.remaining_ticks /= #2 scoreboardConstant

title @s actionbar {"translate":"item.utils.notify.on_cooldown",with:[{"score":{"name":"@s","objective":"item.utils.cooldown.remaining_seconds"},"color":"red"},{"score":{"name":"@s","objective":"item.utils.cooldown.remaining_ticks"},"color":"red"}]}

# SFX
execute at @s run playsound minecraft:entity.enderman.teleport hostile @s ~ ~ ~ 0.5 0.5 0.5

scoreboard players operation @s item.utils.notify.cooldown = #SYSTEM item.utils.notify.cooldown
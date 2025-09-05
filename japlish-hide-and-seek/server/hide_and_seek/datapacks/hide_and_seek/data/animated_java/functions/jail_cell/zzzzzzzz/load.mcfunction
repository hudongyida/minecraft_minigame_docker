scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.jail_cell.export_version dummy
scoreboard objectives add aj.jail_cell.rig_loaded dummy
scoreboard objectives add aj.jail_cell.animation.open.local_anim_time dummy
scoreboard objectives add aj.jail_cell.animation.open.loop_mode dummy
scoreboard players set $aj.jail_cell.animation.open aj.id 0
scoreboard players set $aj.jail_cell.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.jail_cell.export_version aj.i -854289411
scoreboard players reset * aj.jail_cell.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.jail_cell.root] run function animated_java:jail_cell/zzzzzzzz/on_load
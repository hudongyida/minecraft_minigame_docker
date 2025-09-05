execute as @s run tag @s remove item.gliding.get_slot
execute as @s if predicate it:jump run tag @s add item.gliding.glide

# Init Fall Distance check
execute as @s[tag=item.gliding.check_fall_distance] unless entity @s[tag=item.gliding.glide] run tag @s remove item.gliding.check_fall_distance
execute as @s[tag=item.gliding.glide] unless predicate it:passive/gliding_fall_distance unless entity @s[tag=item.gliding.check_fall_distance] run tag @s remove item.gliding.glide
execute as @s[tag=item.gliding.glide] unless entity @s[tag=item.gliding.check_fall_distance] at @s run tag @s add item.gliding.flying_sound
execute as @s[tag=item.gliding.glide] unless entity @s[tag=item.gliding.check_fall_distance] at @s run playsound minecraft:item.elytra.flying player @s ~ ~ ~ 0.3 1 0.3
execute as @s[tag=item.gliding.glide] unless entity @s[tag=item.gliding.check_fall_distance] at @s run effect give @s levitation 1 0 true
execute as @s[tag=item.gliding.glide] run tag @s add item.gliding.check_fall_distance

# Glide
execute as @s[tag=item.gliding.glide] run effect give @s slow_falling 1 150 true
execute as @s[tag=item.gliding.glide] run scoreboard players set @s item.gliding.active 1
execute as @s[tag=item.gliding.glide] at @s run particle minecraft:cloud ~ ~-.3 ~ .2 .2 .2 0.01 1 force
execute as @s[tag=item.gliding.glide] at @s if predicate system:periodic_tick_5 run particle minecraft:tinted_leaves{color:5636095} ~ ~-.3 ~ .2 .2 .2 0.05 1 force
execute as @s[tag=item.gliding.glide] run tag @s add item.gliding.fall_check
execute as @s[tag=item.gliding.glide] run tag @s remove item.gliding.glide

# Reset sound
execute as @s[tag=item.gliding.flying_sound] unless entity @s[tag=item.gliding.fall_check] run stopsound @s * minecraft:item.elytra.flying
execute as @s[tag=item.gliding.flying_sound] unless entity @s[tag=item.gliding.fall_check] run tag @s remove item.gliding.flying_sound
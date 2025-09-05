execute if items entity @s weapon.mainhand totem_of_undying run return fail
execute if entity @s[tag=magnetic_field_creeper.revived] run return fail

tag @s add magnetic_field_creeper.revived
data modify entity @s powered set value false
data modify entity @s Glowing set value false
effect clear @s absorption
effect clear @s regeneration
effect clear @s fire_resistance
effect give @s instant_health 1 3 true
execute at @s as @a[predicate=system:player,distance=..10] run effect give @s blindness 5 10 false

# SFX
execute at @s as @a[predicate=system:player,distance=..10] run playsound minecraft:entity.bat.hurt neutral @s ~ ~ ~ 0.5 1
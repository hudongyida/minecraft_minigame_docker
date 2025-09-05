execute at @s if block ~0.3 ~ ~ minecraft:nether_portal run return 1
execute at @s if block ~-0.3 ~ ~ minecraft:nether_portal run return 1
execute at @s if block ~ ~ ~0.3 minecraft:nether_portal run return 1
execute at @s if block ~ ~ ~-0.3 minecraft:nether_portal run return 1
execute at @s if block ~ ~ ~ minecraft:nether_portal run return 1
return fail
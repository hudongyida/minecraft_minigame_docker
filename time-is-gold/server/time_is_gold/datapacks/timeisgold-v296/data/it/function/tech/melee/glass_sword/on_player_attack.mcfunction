execute as @a if items entity @s weapon.mainhand *[custom_data~{item:glass_sword,fragile:false}] run return fail
item modify entity @s weapon.mainhand it:melee/glass_sword_downgrade
function it:tech/utils/lore/attack_damage/init {offset:-2}
execute at @s run playsound minecraft:entity.zombie_villager.cure hostile @s ~ ~ ~ 0.5 2 0
$execute as @n[tag=monster,scores={entityid=$(entityid)}] at @s run particle sonic_boom ~ ~1 ~ 0 0 0 0 1 force
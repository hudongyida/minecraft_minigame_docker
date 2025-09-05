function it:tech/utils/detect/right_click {advancement:"it:melee/glass_sword_right_click", item_tag:glass_sword, tag:item.glass_sword.pre, type:1}
function it:tech/utils/cooldown/check {failTag:item.glass_sword.fail, passTag:item.glass_sword.use, inputTag:item.glass_sword.pre, scoreboard:item.glass_sword.cooldown, status:0}
tag @s[tag=item.glass_sword.fail] remove item.glass_sword.fail

execute as @s[tag=item.glass_sword.use] run item modify entity @s weapon.mainhand it:melee/glass_sword_upgrade
execute as @s[tag=item.glass_sword.use] at @s run function it:tech/utils/lore/attack_damage/init {offset:-2}
execute as @s[tag=item.glass_sword.use] run function it:tech/utils/cooldown/init {scoreboard:item.glass_sword.cooldown, value:10}
execute as @s[tag=item.glass_sword.use] at @s anchored eyes positioned ^-.3 ^ ^.5 positioned ~ ~-0.5 ~ run particle sonic_boom ~ ~ ~ 0 0 0 0 1 force
execute as @s[tag=item.glass_sword.use] at @s run playsound minecraft:block.trial_spawner.detect_player block @s ~ ~ ~ 1 1 1
execute as @s[tag=item.glass_sword.use] run tag @s remove item.glass_sword.use
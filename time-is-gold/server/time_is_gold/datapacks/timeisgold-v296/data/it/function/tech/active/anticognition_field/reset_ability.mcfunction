scoreboard players reset @s item.anticognition_field.tick
function it:tech/utils/cooldown/init {scoreboard:item.anticognition_field.cooldown, value:1200}
effect clear @s weakness
effect clear @s fire_resistance

# SFX
execute as @s at @s run playsound entity.zombie_villager.cure hostile @s ~ ~ ~ 0.33 0.75 0.33
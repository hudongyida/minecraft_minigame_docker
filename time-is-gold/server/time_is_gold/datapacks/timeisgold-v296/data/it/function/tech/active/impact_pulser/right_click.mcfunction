function it:tech/utils/detect/right_click {advancement:"it:active/impact_pulser_right_click", item:lodestone, item_tag:impact_pulser, tag:item.impact_pulser.pre, type:0}
function it:tech/utils/cooldown/check {failTag:item.impact_pulser.fail, passTag:item.impact_pulser.use, inputTag:item.impact_pulser.pre, scoreboard:item.impact_pulser.cooldown, status:1}
tag @s[tag=item.impact_pulser.fail] remove item.impact_pulser.fail

execute as @s[tag=item.impact_pulser.use] run function it:tech/utils/cooldown/init {scoreboard:item.impact_pulser.cooldown, value:140}
execute as @s[tag=item.impact_pulser.use] at @s if entity @e[tag=monster,distance=..5] run function it:tech/active/impact_pulser/push

# SFX
execute as @s[tag=item.impact_pulser.use] at @s run playsound entity.firework_rocket.blast hostile @a ~ ~ ~ 1 0.5 0

# VFX
execute as @s[tag=item.impact_pulser.use] at @s run particle flash ~ ~1 ~ 1 1 1 0 4 force
execute as @s[tag=item.impact_pulser.use] at @s positioned ~ ~1 ~ run function system:vfx/expand_circle/init {R:1, G:1, B:1, range:5, step:8}

tag @s[tag=item.impact_pulser.use] remove item.impact_pulser.use
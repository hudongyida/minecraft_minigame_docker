function it:tech/utils/detect/right_click {advancement:"it:active/the_fault_right_click", item:iron_bars, item_tag:the_fault, tag:item.the_fault.pre, type:0}
function it:tech/utils/cooldown/check {failTag:item.the_fault.fail, passTag:item.the_fault.use, inputTag:item.the_fault.pre, scoreboard:item.the_fault.cooldown, status:1}
tag @s[tag=item.the_fault.fail] remove item.the_fault.fail

execute as @s[tag=item.the_fault.use] run function it:tech/utils/cooldown/init {scoreboard:item.the_fault.cooldown, value:600}
execute as @s[tag=item.the_fault.use] at @s as @e[tag=monster.ally,tag=!item.the_fault.applied] run effect give @s glowing 5 100 true
execute as @s[tag=item.the_fault.use] at @s as @e[tag=monster.ally,tag=!item.the_fault.applied] run tag @s add item.the_fault.applied
execute as @s[tag=item.the_fault.use] at @s as @e[tag=monster,tag=item.the_fault.sinked] run tag @s remove item.the_fault.sinked

# SFX
execute as @s[tag=item.the_fault.use] run playsound minecraft:entity.evoker.cast_spell hostile @a ~ ~ ~ 1 1 0
execute as @s[tag=item.the_fault.use] run playsound minecraft:block.chain.break block @a ~ ~ ~ 1 0 0
execute as @s[tag=item.the_fault.use] run playsound minecraft:block.iron_door.close block @a ~ ~ ~ 1 0 0

# VFX
execute as @s[tag=item.the_fault.use] run particle dust{color:[0.111, 0.111, 0.111], scale:1.5} ~ ~1 ~ .4 .4 .4 1 16 force

tag @s[tag=item.the_fault.use] remove item.the_fault.use
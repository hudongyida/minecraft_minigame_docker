# Trigger
function it:tech/utils/detect/f_hand {item:bell, item_tag:handbell, tag:item.handbell}
execute as @a[tag=item.handbell] run function it:tech/utils/use_cost/item

# belling
execute as @a[tag=item.handbell] at @s run playsound minecraft:block.bell.use master @a ~ ~ ~ 1 1.1 0.1
execute as @a[tag=item.handbell] at @s run particle minecraft:flash ~ ~1 ~ 0 0 0 0.05 1 force @s
execute as @a[tag=item.handbell] at @s run particle note ~ ~1 ~ .7 .7 .7 0.05 20 force

# detect
execute at @a[tag=item.handbell] as @e[tag=monster,distance=..10] run tag @s add handbell.detect


# Specific cases
execute as @e[tag=handbell.detect,tag=boss] run tag @s add handbell.detect.sc
execute as @e[tag=handbell.detect,tag=turret] run tag @s add handbell.detect.sc

execute as @e[tag=handbell.detect.sc,tag=boss.automaton] on passengers run function bosses:tech/automaton/pattern1/targeting_init with entity @s data

# Others
execute as @e[tag=handbell.detect,tag=!handbell.detect.sc] run damage @s 0.0 player_attack by @a[tag=item.handbell,sort=nearest,limit=1]


tag @e[tag=handbell.detect] remove handbell.detect
tag @e[tag=handbell.detect.sc] remove handbell.detect.sc
tag @a[tag=item.handbell] remove item.handbell
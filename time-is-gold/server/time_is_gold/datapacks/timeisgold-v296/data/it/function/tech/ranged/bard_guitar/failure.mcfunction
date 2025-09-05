title @s actionbar {"translate": "item.bard_guitar.failure"}
#tag @s add item.bard_guitar.failed
function it:tech/utils/use_cost/time {cost:100}
function it:tech/ranged/bard_guitar/functions/reset

execute at @s run playsound minecraft:block.note_block.guitar block @a ~ ~ ~ 1 0.5946 0
execute at @s run playsound minecraft:block.note_block.guitar block @a ~ ~ ~ 1 0.7492 0
execute at @s run playsound minecraft:block.note_block.guitar block @a ~ ~ ~ 1 0.8909 0
execute at @s run playsound minecraft:block.note_block.guitar block @a ~ ~ ~ 1 1.1225 0

execute at @s run particle angry_villager ~ ~ ~ .5 .5 .5 0.05 10 force
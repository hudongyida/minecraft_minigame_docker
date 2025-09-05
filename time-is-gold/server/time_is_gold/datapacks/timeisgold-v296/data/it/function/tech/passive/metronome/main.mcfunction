execute as @a[tag=item.metronome.tuning] if entity @s run tag @s remove item.metronome.tuning
execute as @a run function it:tech/utils/detect/slot {item:player_head, slot:7, item_tag:metronome, tag:item.metronome.get_slot}

execute as @a[tag=!item.metronome.get_slot] if score @s item.metronome.delay matches 1.. run scoreboard players reset @s item.metronome.delay
execute as @a[tag=!item.metronome.get_slot] if score @s item.metronome.tick matches 1.. run scoreboard players reset @s item.metronome.tick

execute as @a[tag=item.metronome.get_slot] run scoreboard players add @s item.metronome.delay 1
execute as @a[tag=item.metronome.get_slot] if score @s item.metronome.delay matches 130.. run tag @s add item.metronome.tuning
execute as @a[tag=item.metronome.get_slot] run tag @s remove item.metronome.get_slot

# Tuning
execute as @a[tag=item.metronome.tuning] run scoreboard players add @s item.metronome.tick 1
execute as @a[tag=item.metronome.tuning] run function it:tech/passive/metronome/melody
execute as @a[tag=item.metronome.tuning] if score @s item.metronome.tick matches 10.. run function it:tech/passive/metronome/tune

execute as @a[tag=item.metronome.tune_success] run effect give @s strength 8 1 false
execute as @a[tag=item.metronome.tune_success] at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 2
execute as @a[tag=item.metronome.tune_success] run function it:tech/passive/metronome/reset

execute as @a[tag=item.metronome.tune_fail] run effect give @s weakness 8 0 false
execute as @a[tag=item.metronome.tune_fail] at @s run playsound minecraft:block.note_block.didgeridoo player @s ~ ~ ~ 1 1
execute as @a[tag=item.metronome.tune_fail] run function it:tech/passive/metronome/reset
execute as @s if score @s item.metronome.tick matches 32.. run return run tag @s add item.metronome.tune_fail
execute as @s if predicate it:jump if score @s item.metronome.tick matches ..20 run return run tag @s add item.metronome.tune_fail
execute as @s if predicate it:jump run tag @s add item.metronome.tune_success
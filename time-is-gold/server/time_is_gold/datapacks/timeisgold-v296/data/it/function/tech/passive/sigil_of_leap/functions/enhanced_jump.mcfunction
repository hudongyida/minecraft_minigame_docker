scoreboard players operation @s item.sigil_of_leap.stored_jump += @s item.sigil_of_leap.jump
scoreboard players reset @s item.sigil_of_leap.jump

execute if score @s item.sigil_of_leap.stored_jump matches 1 at @s run playsound minecraft:entity.goat.long_jump hostile @s ~ ~ ~ 0.2 1 0
execute if score @s item.sigil_of_leap.stored_jump matches 1 at @s run particle block{block_state:"white_stained_glass"} ~ ~ ~ 0 0 0 0 2 force
execute if score @s item.sigil_of_leap.stored_jump matches 1 at @s run scoreboard players add @s item.sigil_of_leap.stored_jump 1

execute if score @s item.sigil_of_leap.stored_jump matches 3 run playsound minecraft:entity.goat.long_jump hostile @s ~ ~ ~ 0.2 1 0
execute if score @s item.sigil_of_leap.stored_jump matches 3 run particle block{block_state:"white_stained_glass"} ~ ~ ~ 0 0 0 0 2 force
execute if score @s item.sigil_of_leap.stored_jump matches 3 run scoreboard players add @s item.sigil_of_leap.stored_jump 1
execute if score @s item.sigil_of_leap.stored_jump matches 4 run effect give @s minecraft:jump_boost 1 5 false
execute if score @s item.sigil_of_leap.stored_jump matches 4 run scoreboard players set @s item.sigil_of_leap.safe_fall_distance 30

execute if score @s item.sigil_of_leap.stored_jump matches 5.. at @s run playsound minecraft:entity.goat.long_jump hostile @s ~ ~ ~ 1 1.5 1
execute if score @s item.sigil_of_leap.stored_jump matches 5.. at @s run particle block{block_state:"white_stained_glass"} ~ ~ ~ 0 0 0 0 5 force
execute if score @s item.sigil_of_leap.stored_jump matches 5.. at @s run particle cloud ~ ~ ~ 0 0 0 0 1 force
execute if score @s item.sigil_of_leap.stored_jump matches 5.. run scoreboard players reset @s item.sigil_of_leap.stored_jump
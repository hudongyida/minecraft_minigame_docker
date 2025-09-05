execute if score @s item.command_console.typing_sound matches 5 run playsound minecraft:block.lever.click block @a ~ ~ ~ 1 1 0
execute if score @s item.command_console.typing_sound matches 5 run playsound minecraft:block.note_block.hat block @a ~ ~ ~ 1 1 0
execute if score @s item.command_console.typing_sound matches 4 run playsound minecraft:block.lever.click block @a ~ ~ ~ 1 2 0
execute if score @s item.command_console.typing_sound matches 4 run playsound minecraft:block.note_block.hat block @a ~ ~ ~ 1 2 0
execute if score @s item.command_console.typing_sound matches 3 run playsound minecraft:block.lever.click block @a ~ ~ ~ 1 1.5 0
execute if score @s item.command_console.typing_sound matches 3 run playsound minecraft:block.note_block.hat block @a ~ ~ ~ 1 1.5 0
execute if score @s item.command_console.typing_sound matches 2 run playsound minecraft:block.lever.click block @a ~ ~ ~ 1 1 0
execute if score @s item.command_console.typing_sound matches 2 run playsound minecraft:block.note_block.hat block @a ~ ~ ~ 1 1 0
execute if score @s item.command_console.typing_sound matches 1 run playsound minecraft:block.lever.click block @a ~ ~ ~ 1 2 0
execute if score @s item.command_console.typing_sound matches 1 run playsound minecraft:block.note_block.hat block @a ~ ~ ~ 1 2 0
scoreboard players remove @s item.command_console.typing_sound 1
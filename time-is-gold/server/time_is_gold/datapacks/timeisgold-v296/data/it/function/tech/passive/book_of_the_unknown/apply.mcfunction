execute at @s unless score @s item.book_of_the_unknown.fragility matches 1.. run particle enchant ~ ~1 ~ 1 1 1 0.05 10 force
execute at @s unless score @s item.book_of_the_unknown.fragility matches 1.. run particle witch ~ ~1 ~ 0 0 0 0.01 5 force
execute at @s unless score @s item.book_of_the_unknown.fragility matches 1.. run playsound minecraft:entity.illusioner.prepare_blindness hostile @a ~ ~ ~ 1 1.5 0.1
execute at @s unless score @s item.book_of_the_unknown.fragility matches 1.. run playsound minecraft:item.book.page_turn player @a ~ ~ ~ 1 1 0.1
scoreboard players set @s item.book_of_the_unknown.fragility 60
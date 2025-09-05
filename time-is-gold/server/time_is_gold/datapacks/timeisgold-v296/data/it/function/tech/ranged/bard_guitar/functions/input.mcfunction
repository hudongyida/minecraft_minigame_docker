scoreboard players set @s item.bard_guitar.note 0
execute as @s if predicate it:ranged/bard_guitar_w run scoreboard players set @s item.bard_guitar.note 1
execute as @s if predicate it:ranged/bard_guitar_a run scoreboard players set @s item.bard_guitar.note 2
execute as @s if predicate it:ranged/bard_guitar_s run scoreboard players set @s item.bard_guitar.note 3
execute as @s if predicate it:ranged/bard_guitar_d run scoreboard players set @s item.bard_guitar.note 4

execute if score @s item.bard_guitar.note matches 0 run scoreboard players reset @s item.bard_guitar.note
execute if score @s item.bard_guitar.note = @s item.bard_guitar.prev_input run scoreboard players set @s item.bard_guitar.note -1

execute if score @s item.bard_guitar.success matches 3 if score @s item.bard_guitar.note = @s item.bard_guitar.note-4 run function it:tech/ranged/bard_guitar/functions/catch
execute if score @s item.bard_guitar.success matches 2 if score @s item.bard_guitar.note = @s item.bard_guitar.note-3 run function it:tech/ranged/bard_guitar/functions/catch
execute if score @s item.bard_guitar.success matches 1 if score @s item.bard_guitar.note = @s item.bard_guitar.note-2 run function it:tech/ranged/bard_guitar/functions/catch
execute unless score @s item.bard_guitar.success matches 1.. if score @s item.bard_guitar.note = @s item.bard_guitar.note-1 run function it:tech/ranged/bard_guitar/functions/catch

scoreboard players operation @s item.bard_guitar.prev_input = @s item.bard_guitar.note
#scoreboard players reset @s item.bard_guitar.note
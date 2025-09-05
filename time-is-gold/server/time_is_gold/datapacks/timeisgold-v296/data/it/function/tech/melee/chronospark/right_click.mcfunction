function it:tech/utils/detect/right_click {advancement:"it:melee/chronospark_right_click", item_tag:chronospark, tag:item.chronospark.charge, type:1}

execute as @s[tag=item.chronospark.charge] run scoreboard players add @s item.chronospark.harmony_charge_tick 2
execute as @s[tag=item.chronospark.charge] run scoreboard players set @s item.chronospark.hold_check 1
execute as @s[tag=item.chronospark.charge] run function it:tech/melee/chronospark/functions/charge_recursive
execute as @s[tag=item.chronospark.charge] run function it:tech/melee/chronospark/functions/actionbar
execute as @s[tag=item.chronospark.charge] run function it:tech/melee/chronospark/functions/sound
execute as @s[tag=item.chronospark.charge] at @s positioned ~ ~0.5 ~ run function it:tech/melee/chronospark/functions/charge_particle
execute as @s[tag=item.chronospark.charge] run tag @s remove item.chronospark.charge
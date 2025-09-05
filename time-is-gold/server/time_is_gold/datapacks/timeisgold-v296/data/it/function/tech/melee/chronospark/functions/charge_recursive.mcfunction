execute as @s unless score @s item.chronospark.harmony_charge_tick matches 20.. run return fail
execute as @s if score @s item.chronospark.harmony_charge matches 8.. run return fail

execute as @s run scoreboard players remove @s item.chronospark.harmony_charge_tick 20
execute as @s run scoreboard players add @s item.chronospark.harmony_charge 1
execute as @s run function it:tech/melee/chronospark/functions/charge_recursive
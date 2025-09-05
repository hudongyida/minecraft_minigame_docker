execute as @s[tag=!item.chronospark.init_sound] at @s unless score @s item.chronospark.sound-all_charge__init matches 1 run playsound minecraft:entity.firework_rocket.twinkle player @a ~ ~ ~ 0.5 1.5 0
tag @s add item.chronospark.init_sound

execute as @s if score @s item.chronospark.harmony_charge matches 8 unless score @s item.chronospark.sound-all_charge__init matches 1 at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 2
execute as @s if score @s item.chronospark.harmony_charge matches 8 unless score @s item.chronospark.sound-all_charge__init matches 1 at @s run playsound minecraft:block.beacon.activate block @s ~ ~ ~ 1 2
execute as @s if score @s item.chronospark.harmony_charge matches 8 unless score @s item.chronospark.sound-all_charge__init matches 1 run scoreboard players set @s item.chronospark.sound-all_charge__init 1
execute as @s if score @s item.chronospark.harmony_charge matches 8 run return run scoreboard players reset @s item.chronospark.sound

execute as @s run scoreboard players operation @s item.chronospark.sound = @s item.chronospark.harmony_charge_tick
execute as @s run scoreboard players operation @s item.chronospark.sound %= #3 scoreboardConstant

execute as @s unless score @s item.chronospark.sound-pitch__max matches 160 run scoreboard players set @s item.chronospark.sound-pitch__max 160

execute as @s if score @s item.chronospark.sound matches 1 run scoreboard players operation @s item.chronospark.sound-pitch = @s item.chronospark.harmony_charge
execute as @s if score @s item.chronospark.sound matches 1 run scoreboard players operation @s item.chronospark.sound-pitch *= #8 scoreboardConstant
execute as @s if score @s item.chronospark.sound matches 1 run scoreboard players operation @s item.chronospark.sound-pitch += @s item.chronospark.harmony_charge_tick

execute as @s if score @s item.chronospark.harmony_charge matches 0..7 if score @s item.chronospark.harmony_charge_tick matches 2 at @s run function system:sfx/dynamic_pitch/init {value:item.chronospark.sound-pitch, max:item.chronospark.sound-pitch__max, function:"it:tech/melee/chronospark/functions/sound_adjust_pitch"}

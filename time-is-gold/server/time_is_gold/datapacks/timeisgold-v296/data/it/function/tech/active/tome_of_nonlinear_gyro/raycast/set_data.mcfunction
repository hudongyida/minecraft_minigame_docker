execute as @s run function system:utils/uuid_tokenizer/init
data modify entity @s data.selfuuid set from storage timeisgold:uuid_tokenizer output
scoreboard players set @s item.tome_of_nonlinear_gyro.tick 0
scoreboard players set @s item.tome_of_nonlinear_gyro.max_tick 60

tag @s remove item.tome_of_nonlinear_gyro.marker.uninitialized
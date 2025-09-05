function system:utils/uuid_tokenizer/init
execute as @s on passengers as @s[type=marker,tag=bosses.the_shaman.pattern6.clone.marker.manager] run data modify entity @s data.selfuuid set from storage timeisgold:uuid_tokenizer output
execute store result score @s bosses.the_shaman.pattern1.cooldown run random value 0..100000
scoreboard players operation @s bosses.the_shaman.pattern1.cooldown = #SYSTEM bosses.the_shaman.pattern1.cooldown

tag @s remove boss.the_shaman.pattern6.clone.uninitialized
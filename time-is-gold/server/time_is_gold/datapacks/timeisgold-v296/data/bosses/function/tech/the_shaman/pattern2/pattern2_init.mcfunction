scoreboard players operation @s bosses.the_shaman.pattern2.cooldown = #SYSTEM bosses.the_shaman.pattern2.cooldown
scoreboard players reset #TEMP bosses.the_shaman.pattern2.mirror.count
execute as @e[type=marker,tag=bosses.the_shaman.pattern2.mirror.marker] run scoreboard players add #TEMP bosses.the_shaman.pattern2.mirror.count 1
execute unless score #TEMP bosses.the_shaman.pattern2.mirror.count matches 3.. run function bosses:tech/the_shaman/pattern2/place_mirror/init
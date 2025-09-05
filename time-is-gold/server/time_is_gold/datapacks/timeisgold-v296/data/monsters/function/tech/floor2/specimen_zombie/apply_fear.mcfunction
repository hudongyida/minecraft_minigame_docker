# apply_fear
#execute as @s on attacker unless score @s monsters.specimen_zombie.attack_delay matches 1.. run scoreboard players add @s monsters.specimen.fear 50
#execute as @s on attacker at @s unless score @s monsters.specimen_zombie.attack_delay matches 1.. run playsound minecraft:ambient.cave block @s ~ ~ ~ 0.3 2 0.3
#execute as @s on attacker at @s run scoreboard players set @s monsters.specimen_zombie.attack_delay 2
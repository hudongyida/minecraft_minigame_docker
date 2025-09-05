$execute as @a[distance=..8] run function monsters:tech/global/utils/monster_damage/explosion/init {value:20.0,monsteruuid:"$(monsteruuid)"}
effect give @a[distance=..8] blindness 5 1 false

# SFX
execute as @s at @s run playsound minecraft:entity.bat.hurt neutral @s ~ ~ ~ 0.5 1
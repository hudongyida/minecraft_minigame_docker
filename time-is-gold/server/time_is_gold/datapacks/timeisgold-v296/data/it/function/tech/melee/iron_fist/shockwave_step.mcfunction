execute at @s run tp @s ^ ^ ^0.66
execute at @s positioned ^1.0 ^-1.0 ^ run function it:tech/melee/iron_fist/shockwave_display
execute at @s positioned ^0.0 ^-1.0 ^ run function it:tech/melee/iron_fist/shockwave_display
execute at @s positioned ^-1.0 ^-1.0 ^ run function it:tech/melee/iron_fist/shockwave_display
execute at @s run function it:tech/melee/iron_fist/shockwave_damage with entity @s data

# SFX
execute at @s run playsound block.tuff.break block @a ~ ~ ~ 1 0.5 0

execute unless score @s item.iron_fist.shockwave_life_tick matches 0.. run scoreboard players set @s item.iron_fist.shockwave_life_tick 100
execute if score @s item.iron_fist.shockwave_life_tick matches 0.. run scoreboard players remove @s item.iron_fist.shockwave_life_tick 1
execute at @s unless block ~ ~ ~ #it:air run scoreboard players set @s item.iron_fist.shockwave_life_tick 0
execute at @s if block ~ ~-0.5 ~ #it:air if block ~ ~-1.5 ~ #it:air run scoreboard players set @s item.iron_fist.shockwave_life_tick 0
execute if score @s item.iron_fist.shockwave_life_tick matches ..0 run kill @s
function it:tech/utils/cooldown/tick {scoreboard:item.surprise_dice.cooldown}

# roll dice
execute as @e[tag=item.surprise_dice.dice] run scoreboard players add @s item.surprise_dice 1
execute as @e[tag=item.surprise_dice.dice] store result score @s item.surprise_dice.number run random value 1..100
execute as @e[tag=item.surprise_dice.dice] if score @s item.surprise_dice.number matches 1..70 run data modify entity @s CustomName set value {"text":"成功","color":"green","bold":true}
execute as @e[tag=item.surprise_dice.dice] if score @s item.surprise_dice.number matches 71..100 run data modify entity @s CustomName set value {"text":"失败","color":"red","bold":true}

execute as @e[tag=item.surprise_dice.dice] if score @s item.surprise_dice matches 100.. run tag @s add item.surprise_dice.end
execute as @e[tag=item.surprise_dice.end] if score @s item.surprise_dice.number matches 1..70 at @s run particle angry_villager ~ ~ ~ 0.3 0.3 0.3 0 4 force
execute as @e[tag=item.surprise_dice.end] if score @s item.surprise_dice.number matches 1..70 at @s run playsound minecraft:entity.goat.ambient master @a ~ ~ ~ 1 1 0
execute as @e[tag=item.surprise_dice.end] if score @s item.surprise_dice.number matches 71..100 at @s as @e[tag=monster,sort=nearest,limit=1,distance=..15] run damage @s 12.0 explosion
#execute as @e[tag=item.surprise_dice.end] if score @s item.surprise_dice.number matches 71..100 at @s run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:4,Colors:[I;16776965,16757529,16711680,16771289]}]}}}}
execute as @e[tag=item.surprise_dice.end] if score @s item.surprise_dice.number matches 71..100 at @s run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"firework_rocket",count:1,components:{fireworks:{explosions:[{shape:"burst",colors:[I;16776965,16757529,16711680,16771289]}]}}}}
execute as @e[tag=item.surprise_dice.end] run kill @s

# SFX
execute as @e[tag=item.surprise_dice.dice] if score @s item.surprise_dice matches 1 at @s run playsound minecraft:ui.button.click master @a ~ ~ ~ 0.3 1.4 0
execute as @e[tag=item.surprise_dice.dice] if score @s item.surprise_dice matches 10 at @s run playsound minecraft:ui.button.click master @a ~ ~ ~ 0.3 1.4 0
execute as @e[tag=item.surprise_dice.dice] if score @s item.surprise_dice matches 20 at @s run playsound minecraft:ui.button.click master @a ~ ~ ~ 0.3 1.4 0
execute as @e[tag=item.surprise_dice.dice] if score @s item.surprise_dice matches 30 at @s run playsound minecraft:ui.button.click master @a ~ ~ ~ 0.3 1.4 0
execute as @e[tag=item.surprise_dice.dice] if score @s item.surprise_dice matches 40 at @s run playsound minecraft:ui.button.click master @a ~ ~ ~ 0.3 1.4 0
execute as @e[tag=item.surprise_dice.dice] if score @s item.surprise_dice matches 50 at @s run playsound minecraft:ui.button.click master @a ~ ~ ~ 0.3 1.4 0
execute as @e[tag=item.surprise_dice.dice] if score @s item.surprise_dice matches 60 at @s run playsound minecraft:ui.button.click master @a ~ ~ ~ 0.3 1.4 0
execute as @e[tag=item.surprise_dice.dice] if score @s item.surprise_dice matches 70 at @s run playsound minecraft:ui.button.click master @a ~ ~ ~ 0.3 1.4 0
execute as @e[tag=item.surprise_dice.dice] if score @s item.surprise_dice matches 80 at @s run playsound minecraft:ui.button.click master @a ~ ~ ~ 0.3 1.4 0
execute as @e[tag=item.surprise_dice.dice] if score @s item.surprise_dice matches 90 at @s run playsound minecraft:ui.button.click master @a ~ ~ ~ 0.3 1.4 0
execute as @e[tag=item.surprise_dice.dice] if score @s item.surprise_dice matches 100 at @s run playsound minecraft:ui.button.click master @a ~ ~ ~ 0.3 1.4 0

# VFX
execute as @e[tag=item.surprise_dice.dice] if score @s item.surprise_dice matches ..99 if score @s item.surprise_dice.number matches 1..15 run data modify entity @s Item.components.profile set value {id:[I;-495847147,1894401336,-2076282148,-1136365010],properties:[{name:texture, value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTMxMzVlYTMxYmMxNWJlMTM0NjJiZjEwZTkxMmExNDBlNWE3ZDY4ZWY0YmQyNmUzZDc1MDU1OWQ1MDJiZjk1In19fQ=="}]}
execute as @e[tag=item.surprise_dice.dice] if score @s item.surprise_dice matches ..99 if score @s item.surprise_dice.number matches 16..35 run data modify entity @s Item.components.profile set value {id:[I;1086566395,-2115941158,-1591135316,-427382263],properties:[{name:texture, value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2NmMTliYmJiMTNhMWYzNWFjOGYxNDFjZmNlZjlkMDA4NGQxNzZlY2I0ZjRlZWZiNThhZmRhMzUzMGQwYTcyNyJ9fX0="}]}
execute as @e[tag=item.surprise_dice.dice] if score @s item.surprise_dice matches ..99 if score @s item.surprise_dice.number matches 36..50 run data modify entity @s Item.components.profile set value {id:[I;1086566395,-2115941158,-1591135316,-427382263],properties:[{name:texture, value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2NmMTliYmJiMTNhMWYzNWFjOGYxNDFjZmNlZjlkMDA4NGQxNzZlY2I0ZjRlZWZiNThhZmRhMzUzMGQwYTcyNyJ9fX0="}]}
execute as @e[tag=item.surprise_dice.dice] if score @s item.surprise_dice matches ..99 if score @s item.surprise_dice.number matches 51..80 run data modify entity @s Item.components.profile set value {id:[I;1791025460,1753891968,-1392300150,1410119208],properties:[{name:texture, value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDM1MWFmNDk5ZjRiZjBiNmNmYWI3YTFmNjI2MWM1YzExYWUyY2RjMDE5ODI1YWFkYjk2OWQ1NjdmZjM1NDUzNSJ9fX0="}]}
execute as @e[tag=item.surprise_dice.dice] if score @s item.surprise_dice matches ..99 if score @s item.surprise_dice.number matches 81..100 run data modify entity @s Item.components.profile set value {id:[I;658523910,2137212401,-1411787754,-121723807],properties:[{name:texture, value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmNjZDc1M2RiMTlmYmZjZDNhNTRmNmZkZDBhYTQ1ZDFhM2JmMjVjNjM3ZDY2N2M0M2U2NDZiMWEzOTBmYTYyZCJ9fX0="}]}
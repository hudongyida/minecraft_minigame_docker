$execute at @s run summon firework_rocket ~ ~ ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[16770560],fade_colors:[15662851]}]}}},Owner:$(UUID)}
$execute if entity @s[tag=item.trumpet.cheer] at @s run summon firework_rocket ~ ~ ~ {LifeTime:5,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[1346303],fade_colors:[28671]}]}}},Owner:$(UUID)}
tag @s remove item.trumpet.on_sight
tag @s add item.trumpet.cheer
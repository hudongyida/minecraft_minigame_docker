clear @s
loot give @s loot minecraft:scenario/fishing


kill @e[type=item,x=35000,y=66,z=0,distance=..500]
scoreboard players operation @s gf_compare = @s gf_points
execute as @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:cod"}]}] at @s run tellraw @s [{"text":"鳕鱼钓到啦!","color":"blue"},{"text":" | ","color":"aqua"},{"text":"+4","color":"yellow"}]
execute as @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:cod"}]}] at @s run scoreboard players add @s gf_points 4

execute as @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:salmon"}]}] at @s run tellraw @s [{"text":"鲑鱼钓到啦!","color":"blue"},{"text":" | ","color":"aqua"},{"text":"+5","color":"yellow"}]
execute as @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:salmon"}]}] at @s run scoreboard players add @s gf_points 5

execute as @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:tropical_fish"}]}] at @s run tellraw @s [{"text":"热带鱼钓到啦!","color":"blue"},{"text":" | ","color":"aqua"},{"text":"+7","color":"yellow"}]
execute as @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:tropical_fish"}]}] at @s run scoreboard players add @s gf_points 7

execute as @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:pufferfish"}]}] at @s run tellraw @s [{"text":"河豚钓到啦!","color":"blue"},{"text":" | ","color":"aqua"},{"text":"+6","color":"yellow"}]
execute as @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:pufferfish"}]}] at @s run scoreboard players add @s gf_points 6

execute as @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:bow"}]}] at @s run tellraw @s [{"text":"弓钓到啦!","color":"blue"},{"text":" | ","color":"aqua"},{"text":"+10","color":"yellow"}]
execute as @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:bow"}]}] at @s run scoreboard players add @s gf_points 10

execute as @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:enchanted_book"}]}] at @s run tellraw @s [{"text":"附魔书钓到啦!","color":"blue"},{"text":" | ","color":"aqua"},{"text":"+10","color":"yellow"}]
execute as @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:enchanted_book"}]}] at @s run scoreboard players add @s gf_points 10

execute as @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:fishing_rod",tag:{caught_item:1}}]}] at @s run tellraw @s [{"text":"钓竿钓到啦!","color":"blue"},{"text":" | ","color":"aqua"},{"text":"+10","color":"yellow"}]
execute as @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:fishing_rod",tag:{caught_item:1}}]}] at @s run scoreboard players add @s gf_points 10

execute as @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:name_tag"}]}] at @s run tellraw @s [{"text":"命名牌钓到啦!","color":"blue"},{"text":" | ","color":"aqua"},{"text":"+10","color":"yellow"}]
execute as @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:name_tag"}]}] at @s run scoreboard players add @s gf_points 10

execute as @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:nautilus_shell"}]}] at @s run tellraw @s [{"text":"鹦鹉螺钓到啦!","color":"blue"},{"text":" | ","color":"aqua"},{"text":"+10","color":"yellow"}]
execute as @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:nautilus_shell"}]}] at @s run scoreboard players add @s gf_points 10

execute as @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:saddle"}]}] at @s run tellraw @s [{"text":"鞍钓到啦!","color":"blue"},{"text":" | ","color":"aqua"},{"text":"+10","color":"yellow"}]
execute as @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:saddle"}]}] at @s run scoreboard players add @s gf_points 10

execute as @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:lily_pad"}]}] at @s run tellraw @s [{"text":"睡莲钓到啦!","color":"blue"},{"text":" | ","color":"aqua"},{"text":"+1","color":"yellow"}]
execute as @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:lily_pad"}]}] at @s run scoreboard players add @s gf_points 1

execute as @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:bowl"}]}] at @s run tellraw @s [{"text":"木碗钓到啦!","color":"blue"},{"text":" | ","color":"aqua"},{"text":"+2","color":"yellow"}]
execute as @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:bowl"}]}] at @s run scoreboard players add @s gf_points 2

execute as @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:fishing_rod",tag:{caught_item:2}}]}] at @s run tellraw @s [{"text":"鱼竿钓到啦!","color":"blue"},{"text":" | ","color":"aqua"},{"text":"+3","color":"yellow"}]
execute as @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:fishing_rod",tag:{caught_item:2}}]}] at @s run scoreboard players add @s gf_points 3

execute as @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:leather"}]}] at @s run tellraw @s [{"text":"皮革钓到啦!","color":"blue"},{"text":" | ","color":"aqua"},{"text":"+2","color":"yellow"}]
execute as @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:leather"}]}] at @s run scoreboard players add @s gf_points 2

execute as @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:leather_boots"}]}] at @s run tellraw @s [{"text":"皮革靴子钓到啦!","color":"blue"},{"text":" | ","color":"aqua"},{"text":"+2","color":"yellow"}]
execute as @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:leather_boots"}]}] at @s run scoreboard players add @s gf_points 2

execute as @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:stick"}]}] at @s run tellraw @s [{"text":"木棍钓到啦!","color":"blue"},{"text":" | ","color":"aqua"},{"text":"+3","color":"yellow"}]
execute as @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:stick"}]}] at @s run scoreboard players add @s gf_points 3

execute as @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:rotten_flesh"}]}] at @s run tellraw @s [{"text":"腐肉钓到啦!","color":"blue"},{"text":" | ","color":"aqua"},{"text":"+3","color":"yellow"}]
execute as @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:rotten_flesh"}]}] at @s run scoreboard players add @s gf_points 3

execute as @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:string"}]}] at @s run tellraw @s [{"text":"线钓到啦!","color":"blue"},{"text":" | ","color":"aqua"},{"text":"+3","color":"yellow"}]
execute as @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:string"}]}] at @s run scoreboard players add @s gf_points 3

execute as @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:potion"}]}] at @s run tellraw @s [{"text":"瓶装水钓到啦!","color":"blue"},{"text":" | ","color":"aqua"},{"text":"+2","color":"yellow"}]
execute as @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:potion"}]}] at @s run scoreboard players add @s gf_points 2

execute as @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:bone"}]}] at @s run tellraw @s [{"text":"骨头钓到啦!","color":"blue"},{"text":" | ","color":"aqua"},{"text":"+2","color":"yellow"}]
execute as @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:bone"}]}] at @s run scoreboard players add @s gf_points 2

execute as @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:ink_sac"}]}] at @s run tellraw @s [{"text":"墨囊钓到啦!","color":"blue"},{"text":" | ","color":"aqua"},{"text":"+3","color":"yellow"}]
execute as @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:ink_sac"}]}] at @s run scoreboard players add @s gf_points 3

execute as @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:tripwire_hook"}]}] at @s run tellraw @s [{"text":"绊线钩钓到啦!","color":"blue"},{"text":" | ","color":"aqua"},{"text":"+2","color":"yellow"}]
execute as @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:tripwire_hook"}]}] at @s run scoreboard players add @s gf_points 2

scoreboard players operation @s gf_compare -= @s gf_points
execute if entity @s[scores={gf_compare=-1}] run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.5
execute if entity @s[scores={gf_compare=-2}] run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.6
execute if entity @s[scores={gf_compare=-3}] run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.7
execute if entity @s[scores={gf_compare=-4}] run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.8
execute if entity @s[scores={gf_compare=-5}] run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.9
execute if entity @s[scores={gf_compare=-6}] run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1.0
execute if entity @s[scores={gf_compare=-7}] run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1.1
execute if entity @s[scores={gf_compare=-8}] run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1.2
execute if entity @s[scores={gf_compare=-9}] run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1.3
execute if entity @s[scores={gf_compare=-10}] run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1.4
 




execute if entity @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:cod"}]}] at @s run scoreboard players set @s gf_item 1
execute if entity @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:salmon"}]}] at @s run scoreboard players set @s gf_item 2
execute if entity @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:tropical_fish"}]}] at @s run scoreboard players set @s gf_item 3
execute if entity @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:pufferfish"}]}] at @s run scoreboard players set @s gf_item 4
execute if entity @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:bow"}]}] at @s run scoreboard players set @s gf_item 5
execute if entity @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:enchanted_book"}]}] at @s run scoreboard players set @s gf_item 6
execute if entity @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:fishing_rod",tag:{caught_item:1}}]}] at @s run scoreboard players set @s gf_item 7
execute if entity @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:name_tag"}]}] at @s run scoreboard players set @s gf_item 8
execute if entity @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:nautilus_shell"}]}] at @s run scoreboard players set @s gf_item 9
execute if entity @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:saddle"}]}] at @s run scoreboard players set @s gf_item 10
execute if entity @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:lily_pad"}]}] at @s run scoreboard players set @s gf_item 11
execute if entity @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:bowl"}]}] at @s run scoreboard players set @s gf_item 12
execute if entity @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:leather"}]}] at @s run scoreboard players set @s gf_item 13
execute if entity @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:leather_boots"}]}] at @s run scoreboard players set @s gf_item 14
execute if entity @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:rotten_flesh"}]}] at @s run scoreboard players set @s gf_item 15
execute if entity @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:stick"}]}] at @s run scoreboard players set @s gf_item 16
execute if entity @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:string"}]}] at @s run scoreboard players set @s gf_item 17
execute if entity @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:potion"}]}] at @s run scoreboard players set @s gf_item 18
execute if entity @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:bone"}]}] at @s run scoreboard players set @s gf_item 19
execute if entity @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:ink_sac"}]}] at @s run scoreboard players set @s gf_item 20
execute if entity @s[tag=playing,gamemode=adventure,team=gf,nbt={Inventory:[{id:"minecraft:tripwire_hook"}]}] at @s run scoreboard players set @s gf_item 21



clear @s minecraft:cod
clear @s minecraft:salmon
clear @s minecraft:tropical_fish
clear @s minecraft:pufferfish
clear @s minecraft:bow
clear @s minecraft:enchanted_book
clear @s minecraft:fishing_rod{caught_item:1}
clear @s minecraft:fishing_rod{caught_item:2}
clear @s minecraft:name_tag
clear @s minecraft:nautilus_shell
clear @s minecraft:saddle
clear @s minecraft:lily_pad
clear @s minecraft:bowl
clear @s minecraft:leather
clear @s minecraft:leather_boots
clear @s minecraft:rotten_flesh
clear @s minecraft:stick
clear @s minecraft:string
clear @s minecraft:potion
clear @s minecraft:bone
clear @s minecraft:ink_sac
clear @s minecraft:tripwire_hook

scoreboard players reset @s gf_fish
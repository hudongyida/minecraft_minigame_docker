clear @s iron_bars
kill @e[type=item,nbt={Item:{id:"minecraft:iron_bars"}},distance=..15]
replaceitem entity @s hotbar.4 iron_bars{HideFlags:63,display:{Name:'[{"text":"丢出锁定你的答案.","color":"gray","italic":false}]'}}
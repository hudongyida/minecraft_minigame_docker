clear @s lime_bed
kill @e[type=item,nbt={Item:{id:"minecraft:lime_bed"}},distance=..15]
replaceitem entity @s hotbar.0 lime_bed{HideFlags:63,display:{Name:'[{"text":"丢出以将你的猜测加一.","color":"green","italic":false}]'}}
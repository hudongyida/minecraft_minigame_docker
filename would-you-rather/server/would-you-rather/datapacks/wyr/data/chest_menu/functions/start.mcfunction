scoreboard players set @s screen 0
function chest_menu:clear
replaceitem entity @s enderchest.10 diamond_helmet{HideFlags:63,display:{Name:'[{"text":"装饰品","color":"aqua","italic":false,"bold":true}]'},clickable:1}
replaceitem entity @s enderchest.12 book{HideFlags:63,display:{Name:'[{"text":"教程","color":"blue","italic":false,"bold":true}]'},clickable:1}
replaceitem entity @s enderchest.14 nether_star{HideFlags:63,display:{Name:'[{"text":"统计","color":"green","italic":false,"bold":true}]'},clickable:1}
replaceitem entity @s enderchest.16 command_block{HideFlags:63,display:{Name:'[{"text":"工作人员","color":"yellow","italic":false,"bold":true}]'},clickable:1}
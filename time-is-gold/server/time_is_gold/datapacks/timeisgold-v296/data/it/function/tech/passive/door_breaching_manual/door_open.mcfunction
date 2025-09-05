function it:tech/utils/detect/slot {item:book, slot:6, item_tag:door_breaching_manual, tag:item.door_breaching_manual.active}

data modify storage timeisgold:function_api stack append value {playerid:0}
execute store result storage timeisgold:function_api stack[-1].playerid int 1 run scoreboard players get @s[tag=item.door_breaching_manual.active] playerid
execute as @s[tag=item.door_breaching_manual.active] at @s at @n[type=interaction,tag=dungeon.door.open,tag=!dungeon.door.open.opposite,distance=..10] positioned ^ ^ ^4 as @n[type=interaction,tag=dungeon.door.open.opposite,dx=0,distance=..3] at @s run function it:tech/passive/door_breaching_manual/operate with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]

tag @s[tag=item.door_breaching_manual.active] remove item.door_breaching_manual.active
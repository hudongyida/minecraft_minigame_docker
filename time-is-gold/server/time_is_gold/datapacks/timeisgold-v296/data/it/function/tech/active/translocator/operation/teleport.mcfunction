$execute at @s run tp @s $(x) $(y) $(z)
$tellraw @s {"translate":"item.translocator.notify.success","with":[{"selector":"$(targetuuid)","color":"green"}]}
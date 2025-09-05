# VFX
$execute as @e[type=vex,tag=item.spirit_retriever.spirit.$(targetuuid)] at @s run particle dust{color:[0.4, 0.4, 0.4], scale:0.5} ~ ~ ~ 0.1 0.1 0.1 0.1 8

$execute as @e[type=vex,tag=item.spirit_retriever.spirit.$(targetuuid)] on passengers run kill @s
$execute as @e[type=vex,tag=item.spirit_retriever.spirit.$(targetuuid)] run tp @s ~ -2048 ~
$execute as @e[type=vex,tag=item.spirit_retriever.spirit.$(targetuuid)] run kill @s
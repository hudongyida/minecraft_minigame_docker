particle dust_color_transition{from_color:[0.863,0.490,1.000],scale:2,to_color:[0.667,0.000,1.000]} ~ ~ ~ 2 2 2 0.3 40 force
particle portal ~ ~ ~ 2 2 2 0.01 10 force
particle tinted_leaves{color:[0.498,0.212,1.000,1.00]} ~ ~ ~ 2 2 2 0.5 15 force

data modify entity @s data merge value {power:4,entityid:0}
$execute store result entity @s data.entityid int 1 run scoreboard players get $(monsteruuid) entityid
function monsters:tech/global/utils/explode/init with entity @s data

kill @s
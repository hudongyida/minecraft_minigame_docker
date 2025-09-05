scoreboard players add @a[scores={drop_fail=1},tag=playing,team=!select] points 2

scoreboard players remove @a[scores={drop_succeed=1},tag=playing,team=!select] points 2

execute as @a[scores={drop_succeed=1},tag=playing,team=!select] at @s run tellraw @a [{"selector":"@s"},{"text":" -2 点数!","color":"red"}]

execute as @a[scores={drop_fail=1},tag=playing,team=!select] at @s run tellraw @a [{"selector":"@s"},{"text":" +2 点数!","color":"green"}]

execute as @a[scores={drop_abstain=1},tag=playing,team=!select] at @s run tellraw @a [{"selector":"@s"},{"text":" +0 点数!","color":"light_purple"}]
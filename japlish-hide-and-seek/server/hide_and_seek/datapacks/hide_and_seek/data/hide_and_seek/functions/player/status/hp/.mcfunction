#HP自動回復
scoreboard players add @s HP 5
execute as @a if score @s HP > #GameManager HP run scoreboard players operation @s HP = #GameManager HP
#MP自動回復
scoreboard players add @s MP 10
execute as @a if score @s MP > #GameManager MP run scoreboard players operation @s MP = #GameManager MP
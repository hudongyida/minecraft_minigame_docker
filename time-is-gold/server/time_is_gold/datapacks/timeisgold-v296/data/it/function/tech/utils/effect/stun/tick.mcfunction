execute as @e[tag=monster,scores={combat.stun=1..}] at @s run scoreboard players remove @s combat.stun 1
execute as @e[tag=monster,scores={combat.stun=..0},tag=!monster.stun_exception] at @s run data modify entity @s NoAI set value 0b
execute as @e[tag=monster,scores={combat.stun=..0}] at @s run scoreboard players reset @s combat.stun
execute at @s unless block ~ ~ ~ #it:air run kill @s
execute at @s if block ~ ~-1 ~ #it:air run kill @s

execute at @s run particle dust{color:[0.2,0.33,0.8],scale:1} ~ ~ ~ 1.8 0 0 0.1 20 force
execute at @s positioned ^-4.5 ^ ^ run particle dust{color:[0.2,0.33,0.8],scale:1} ~ ~ ~ 0 0 0 0.1 2 force
execute at @s positioned ^4.5 ^ ^ run particle dust{color:[0.2,0.33,0.8],scale:1} ~ ~ ~ 0 0 0 0.1 2 force

execute at @s run tp @s ^ ^ ^0.5
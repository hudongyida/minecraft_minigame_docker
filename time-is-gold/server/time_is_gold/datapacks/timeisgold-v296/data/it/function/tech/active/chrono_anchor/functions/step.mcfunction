execute as @s rotated as @s run rotate @s ~2 ~

execute as @s at @s run particle dust{color:[0.396, 0.671, 0.600], scale:1} ^ ^0.1 ^8 0 0 0 0 1 force
execute as @s at @s run particle dust{color:[0.396, 0.671, 0.600], scale:1} ^ ^0.1 ^-8 0 0 0 0 1 force
#execute as @s at @s run particle dust{color:[0.396, 0.671, 0.600], scale:1} ^8 ^0.1 ^ 0 0 0 0 1 force
#execute as @s at @s run particle dust{color:[0.396, 0.671, 0.600], scale:1} ^-8 ^0.1 ^ 0 0 0 0 1 force

execute as @s at @s run particle dust{color:[0.396, 0.671, 0.600], scale:1} ^ ^0.1 ^2 0 0 0 0 1 force
#execute as @s at @s run particle dust{color:[0.396, 0.671, 0.600], scale:1} ^ ^0.1 ^-2 0 0 0 0 1 force

scoreboard players remove @s item.chrono_anchor.loop 1
execute as @s if score @s item.chrono_anchor.loop matches 1.. run function it:tech/active/chrono_anchor/functions/step
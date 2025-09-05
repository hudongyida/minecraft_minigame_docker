tag @s add monsters.arrow.damage_checked
execute as @s on origin if entity @s[tag=monster] run return 1
return fail
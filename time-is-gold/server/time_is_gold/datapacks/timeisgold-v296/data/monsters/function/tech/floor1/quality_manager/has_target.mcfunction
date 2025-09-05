#execute as @s on attacker if entity @s run return fail
execute as @s on target if entity @s[type=player] run return 1
return fail
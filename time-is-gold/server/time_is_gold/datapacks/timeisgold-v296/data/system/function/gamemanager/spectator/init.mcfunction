gamemode spectator
execute as @s[team=!players] run team join spectators
execute if entity @a[predicate=system:player] run spectate @p[predicate=system:player] @s
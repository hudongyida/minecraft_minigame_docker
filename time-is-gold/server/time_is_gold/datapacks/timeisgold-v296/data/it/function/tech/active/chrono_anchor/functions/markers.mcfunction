execute as @s if score @s item.chrono_anchor.tick matches 1.. run scoreboard players remove @s item.chrono_anchor.tick 1
execute if score @s item.chrono_anchor.tick matches 0 run kill @s

execute as @s[tag=item.chrono_anchor.center] at @s run scoreboard players set @s item.chrono_anchor.loop 18
execute as @s[tag=item.chrono_anchor.center] at @s run function it:tech/active/chrono_anchor/functions/step
execute as @s[tag=item.chrono_anchor.round] at @s run function it:tech/active/chrono_anchor/functions/round_step

execute as @s[tag=item.chrono_anchor.center] at @s run particle dust_color_transition{to_color:[0.296, 0.516, 0.443],from_color:[0.541, 0.169, 0.886], scale:1} ~ ~ ~ 3 3 3 0.01 2 force
execute as @s[tag=item.chrono_anchor.center] at @s as @a[predicate=system:player,distance=..8] run scoreboard players set @s system.time.stasis 1
execute as @s[tag=item.chrono_anchor.center] at @s as @a[predicate=system:player,distance=..8] run scoreboard players set @s item.chrono_anchor.active 1
execute as @s[tag=item.chrono_anchor.center] at @s as @a[gamemode=!spectator,distance=..8] at @s run particle dust{color:[0.196, 0.361, 0.286], scale:1.5} ~ ~1 ~ 0.3 0.3 0.3 0 1 force
execute as @s[tag=item.chrono_anchor.center] at @s as @a[gamemode=!spectator,distance=..8] at @s run particle glow ~ ~1 ~ 0.3 0.3 0.3 0 1 force
execute as @s[tag=item.chrono_anchor.center] at @s if predicate system:periodic_tick_20 run playsound block.beacon.ambient block @a ~ ~ ~ 1 0.5 0.1

execute as @s[tag=item.chrono_anchor.display] at @s run function it:tech/active/chrono_anchor/functions/movement
function it:tech/utils/cooldown/tick {scoreboard:item.chrono_anchor.cooldown}
execute as @a run function it:tech/active/chrono_anchor/functions/players
execute as @e[type=marker,tag=item.chrono_anchor.marker] at @s run function it:tech/active/chrono_anchor/functions/markers
execute as @e[type=block_display,tag=item.chrono_anchor.marker] at @s run function it:tech/active/chrono_anchor/functions/markers
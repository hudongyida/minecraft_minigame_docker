function it:tech/utils/cooldown/tick {scoreboard:item.nailed_doll.cooldown}
execute as @a[predicate=system:player] run function it:tech/active/nailed_doll/display_ui

tag @a[tag=item.nailed_doll.active] remove item.nailed_doll.active
execute as @a[scores={item.nailed_doll.tick=1..}] at @s run function it:tech/active/nailed_doll/active
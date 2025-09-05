function it:tech/utils/detect/right_click {advancement:"it:active/automaton_turret_right_click", item_tag:automaton_turret, tag:item.automaton_turret.use, type:1}

execute as @a[tag=item.automaton_turret.use] at @s run function it:tech/active/automaton_turret/functions/place_preset
execute as @a[tag=item.automaton_turret.use] run tag @s remove item.automaton_turret.use
# 실행 인자: 상호작용한 플레이어가 있는 @e[type=interaction,tag=item.automaton_turret.interaction]

# Only owner can interact with
$execute as @s on target unless score @s playerid matches $(playerid) run return run function it:tech/active/automaton_turret/functions/fail/unexpected_player
#execute as @s on target if items entity @s weapon.mainhand * unless items entity @s weapon.mainhand *[custom_data~{item:gunpowder}] run return run function it:tech/active/automaton_turret/functions/fail/hands_full

# Retrieve turret
$execute as @s unless function it:tech/active/automaton_turret/functions/condition/gunpowder run return run function it:tech/active/automaton_turret/functions/retrieve_init {playerid:$(playerid)}

# Fuel
$execute at @s as @n[type=marker,tag=item.automaton_turret.marker,distance=..1] if score @s item.automaton_turret.fuel matches 60.. run return run function it:tech/active/automaton_turret/functions/fail/fuel_limit {playerid:$(playerid)}
$execute at @s as @n[type=marker,tag=item.automaton_turret.marker,distance=..1] run function it:tech/active/automaton_turret/functions/refuel {playerid:$(playerid)}

data remove entity @s interaction
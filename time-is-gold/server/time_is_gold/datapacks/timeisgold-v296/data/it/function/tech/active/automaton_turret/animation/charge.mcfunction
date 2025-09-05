data modify storage timeisgold:function_api stack append value {x:0, y:0, z:0}
$data modify storage timeisgold:function_api stack[-1].x set from entity @n[type=block_display,tag=item.automaton_turret.id-$(playerid),tag=item.automaton_turret.head,distance=..3] Pos[0]
$data modify storage timeisgold:function_api stack[-1].y set from entity @n[type=block_display,tag=item.automaton_turret.id-$(playerid),tag=item.automaton_turret.head,distance=..3] Pos[1]
$data modify storage timeisgold:function_api stack[-1].z set from entity @n[type=block_display,tag=item.automaton_turret.id-$(playerid),tag=item.automaton_turret.head,distance=..3] Pos[2]
function it:tech/active/automaton_turret/animation/trail with storage timeisgold:function_api stack[-1]
data remove storage timeisgold:function_api stack[-1]
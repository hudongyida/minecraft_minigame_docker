# 실행 인자: @e[type=marker, tag=item.iron_fist.shockwave.marker]

$execute positioned ~-1.5 ~-1 ~-1.5 as @e[tag=monster,dx=3,dy=4,dz=3] run function system:combat/modified_damage/melee/init {value:$(damage), playerid:$(playerid), knockback:1}
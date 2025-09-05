# 실행 인자: @e[type=marker,tag=bosses.automaton.shockwave.marker]

$execute positioned ~-1.5 ~-1 ~-1.5 as @a[predicate=system:player,dx=3,dy=4,dz=3] run function monsters:tech/global/utils/monster_damage/melee/init {value:15, monsteruuid:"$(bossuuid)"}
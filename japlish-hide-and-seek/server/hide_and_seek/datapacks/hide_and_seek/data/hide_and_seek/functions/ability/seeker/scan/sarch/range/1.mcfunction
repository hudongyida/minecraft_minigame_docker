#段階を進行
scoreboard players add @s ability_sarch_phase 1

#周囲1マスをブロック状にサーチ
execute as @s[scores={ability_sarch_phase=2}] run execute positioned ~-1 ~-1 ~-1 if entity @e[tag=hider,dx=1,dy=1,dz=1] positioned ~1 ~1 ~1 if entity @e[tag=hider,dx=-1,dy=-1,dz=-1] run scoreboard players set @s ability_sarch_caught 1
#周囲2マスをブロック状にサーチ
execute as @s[scores={ability_sarch_phase=4}] run execute positioned ~-2 ~-2 ~-2 if entity @e[tag=hider,dx=3,dy=3,dz=3] positioned ~3 ~3 ~3 if entity @e[tag=hider,dx=-3,dy=-3,dz=-3] run scoreboard players set @s ability_sarch_caught 1
#周囲3マスをブロック状にサーチ
execute as @s[scores={ability_sarch_phase=6}] run execute positioned ~-3 ~-3 ~-3 if entity @e[tag=hider,dx=5,dy=5,dz=5] positioned ~5 ~5 ~5 if entity @e[tag=hider,dx=-5,dy=-5,dz=-5] run scoreboard players set @s ability_sarch_caught 1
#周囲4マスをブロック状にサーチ
execute as @s[scores={ability_sarch_phase=8}] run execute positioned ~-4 ~-4 ~-4 if entity @e[tag=hider,dx=7,dy=7,dz=7] positioned ~7 ~7 ~7 if entity @e[tag=hider,dx=-7,dy=-7,dz=-7] run scoreboard players set @s ability_sarch_caught 1
#周囲5マスをブロック状にサーチ
execute as @s[scores={ability_sarch_phase=10}] run execute positioned ~-5 ~-5 ~-5 if entity @e[tag=hider,dx=9,dy=9,dz=9] positioned ~9 ~9 ~9 if entity @e[tag=hider,dx=-9,dy=-9,dz=-9] run scoreboard players set @s ability_sarch_caught 1
#周囲6マスをブロック状にサーチ
execute as @s[scores={ability_sarch_phase=12}] run execute positioned ~-6 ~-6 ~-6 if entity @e[tag=hider,dx=11,dy=11,dz=11] positioned ~11 ~11 ~11 if entity @e[tag=hider,dx=-11,dy=-11,dz=-11] run scoreboard players set @s ability_sarch_caught 1
#周囲7マスをブロック状にサーチ
execute as @s[scores={ability_sarch_phase=14}] run execute positioned ~-7 ~-7 ~-7 if entity @e[tag=hider,dx=13,dy=13,dz=13] positioned ~13 ~13 ~13 if entity @e[tag=hider,dx=-13,dy=-13,dz=-13] run scoreboard players set @s ability_sarch_caught 1
#周囲8マスをブロック状にサーチ
execute as @s[scores={ability_sarch_phase=16}] run execute positioned ~-8 ~-8 ~-8 if entity @e[tag=hider,dx=15,dy=15,dz=15] positioned ~15 ~15 ~15 if entity @e[tag=hider,dx=-15,dy=-15,dz=-15] run scoreboard players set @s ability_sarch_caught 1
#周囲9マスをブロック状にサーチ
execute as @s[scores={ability_sarch_phase=18}] run execute positioned ~-9 ~-9 ~-9 if entity @e[tag=hider,dx=17,dy=17,dz=17] positioned ~17 ~17 ~17 if entity @e[tag=hider,dx=-17,dy=-17,dz=-17] run scoreboard players set @s ability_sarch_caught 1
#周囲10マスをブロック状にサーチ
execute as @s[scores={ability_sarch_phase=20}] run execute positioned ~-10 ~-10 ~-10 if entity @e[tag=hider,dx=19,dy=19,dz=19] positioned ~19 ~19 ~19 if entity @e[tag=hider,dx=-19,dy=-19,dz=-19] run scoreboard players set @s ability_sarch_caught 1

execute as @s[scores={ability_sarch_phase=20}] run function hide_and_seek:ability/seeker/scan/sarch/range/2
# 실행 인자: @e[type=marker,tag=bosses.the_shaman.pattern3.chalice.type4.wave.center]
# $(inner_circle)..$(outer_circle)로 정의된 구각(껍질) 범위 내에 있으면서, 마커와의 Y좌표 차이가 -1 ~ 6 사이인 플레이어만 타겟팅

$execute positioned ~ ~ ~ as @a[predicate=system:player,distance=$(inner_circle)..$(outer_circle)] run tag @s add bosses.the_shaman.pattern3.type4.wave.hit

execute as @a[predicate=system:player,tag=bosses.the_shaman.pattern3.type4.wave.hit] store result score @s bosses.automaton.pattern4.shockwave_y_diff run data get entity @s Pos[1] 1000
execute as @s run scoreboard players operation @a[predicate=system:player,tag=bosses.the_shaman.pattern3.type4.wave.hit] bosses.automaton.pattern4.shockwave_y_diff -= @s bosses.automaton.pattern4.shockwave_y_diff

execute as @a[predicate=system:player,tag=bosses.the_shaman.pattern3.type4.wave.hit] unless score @s bosses.automaton.pattern4.shockwave_y_diff matches -1000..500 run tag @s remove bosses.the_shaman.pattern3.type4.wave.hit
$execute as @a[predicate=system:player,tag=bosses.the_shaman.pattern3.type4.wave.hit] run function monsters:tech/global/utils/monster_damage/melee/init {value:40, monsteruuid:"$(bossuuid)"}

tag @a[predicate=system:player,tag=bosses.the_shaman.pattern3.type4.wave.hit] remove bosses.the_shaman.pattern3.type4.wave.hit
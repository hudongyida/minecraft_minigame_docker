execute if score @s bosses.the_shaman.pattern5.cooldown matches 1.. run scoreboard players remove @s bosses.the_shaman.pattern5.cooldown 1
execute unless score @s bosses.the_shaman.pattern5.cooldown matches 1.. unless score @s bosses.the_shaman.pattern3.cooldown matches 20.. at @s if entity @p[predicate=system:player,distance=..50] run function bosses:tech/the_shaman/pattern5/pattern5_init

# 5번 패턴이 실행 중이 아닐 때 종료
execute unless score @s bosses.the_shaman.pattern5.type matches 1.. run return fail

execute at @s run function bosses:tech/the_shaman/pattern5/operation/step
execute if score @s bosses.the_shaman.pattern5.tick matches 1.. run scoreboard players remove @s bosses.the_shaman.pattern5.tick 1
execute unless score @s bosses.the_shaman.pattern5.tick matches 1.. run function bosses:tech/the_shaman/pattern5/pattern5_terminate
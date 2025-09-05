# 실행 인자: 5번 패턴을 실행 중인 제사장 보스 엔티티
# 실행 위치: 보스 방 중앙 마커
# $(bossuuid)   - 제사장 보스 엔티티 UUID Token

execute if score @s bosses.the_shaman.pattern5.type matches 1 positioned ~ ~ ~ run function bosses:tech/the_shaman/pattern5/patterns/type1/step with storage timeisgold:function_api stack[-1]
execute if score @s bosses.the_shaman.pattern5.type matches 2 positioned ~ ~ ~ run function bosses:tech/the_shaman/pattern5/patterns/type2/step with storage timeisgold:function_api stack[-1]
execute if score @s bosses.the_shaman.pattern5.type matches 3 positioned ~ ~ ~ run function bosses:tech/the_shaman/pattern5/patterns/type3/step with storage timeisgold:function_api stack[-1]
execute if score @s bosses.the_shaman.pattern5.type matches 4 positioned ~ ~ ~ run function bosses:tech/the_shaman/pattern5/patterns/type4/step with storage timeisgold:function_api stack[-1]
execute if score @s bosses.the_shaman.pattern5.type matches 5 positioned ~ ~ ~ run function bosses:tech/the_shaman/pattern5/patterns/type5/step with storage timeisgold:function_api stack[-1]
execute if score @s bosses.the_shaman.pattern5.type matches 6 positioned ~ ~ ~ run function bosses:tech/the_shaman/pattern5/patterns/type6/step with storage timeisgold:function_api stack[-1]
execute if score @s bosses.the_shaman.pattern5.type matches 7 positioned ~ ~ ~ run function bosses:tech/the_shaman/pattern5/patterns/type7/step with storage timeisgold:function_api stack[-1]
execute if score @s bosses.the_shaman.pattern5.type matches 8 positioned ~ ~ ~ run function bosses:tech/the_shaman/pattern5/patterns/type8/step with storage timeisgold:function_api stack[-1]

# SFX
scoreboard players operation @s bosses.the_shaman.pattern5.periodic_tick = @s bosses.the_shaman.pattern5.tick
scoreboard players operation @s bosses.the_shaman.pattern5.periodic_tick %= @s bosses.the_shaman.pattern5.sfx.period
execute if score @s bosses.the_shaman.pattern5.periodic_tick matches 0 run scoreboard players add @s bosses.the_shaman.pattern5.sfx.count 1
execute if score @s bosses.the_shaman.pattern5.periodic_tick matches 0 run scoreboard players set @s bosses.the_shaman.pattern5.sfx.tick 10

execute if score @s bosses.the_shaman.pattern5.sfx.tick matches 10 positioned ~ ~ ~ run function bosses:tech/the_shaman/pattern5/patterns/sfx/init
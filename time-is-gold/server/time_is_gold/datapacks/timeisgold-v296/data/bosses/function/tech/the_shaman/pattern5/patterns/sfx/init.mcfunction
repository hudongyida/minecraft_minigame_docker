# 올라갔다 내려가는 pitch 계산
#scoreboard players operation @s bosses.the_shaman.pattern5.sfx.index = @s bosses.the_shaman.pattern5.sfx.tick
#scoreboard players remove @s bosses.the_shaman.pattern5.sfx.index 5
#execute if score @s bosses.the_shaman.pattern5.sfx.index matches 1.. run scoreboard players operation @s bosses.the_shaman.pattern5.sfx.index *= -1 scoreboardConstant
#scoreboard players add @s bosses.the_shaman.pattern5.sfx.index 5
#scoreboard players operation #TEMP bosses.the_shaman.pattern5.sfx.index = @s bosses.the_shaman.pattern5.sfx.count
#scoreboard players operation #TEMP bosses.the_shaman.pattern5.sfx.index *= #2 scoreboardConstant
#scoreboard players operation @s bosses.the_shaman.pattern5.sfx.index += #TEMP bosses.the_shaman.pattern5.sfx.index
#
## 최대 pitch 설정
#scoreboard players set @s bosses.the_shaman.pattern5.sfx.max 30

scoreboard players set @s bosses.the_shaman.pattern5.sfx.max 16

execute at @s run function system:sfx/dynamic_pitch/init {value:bosses.the_shaman.pattern5.sfx.count, max:bosses.the_shaman.pattern5.sfx.max, function:"bosses:tech/the_shaman/pattern5/patterns/sfx/curse"}

execute if score @s bosses.the_shaman.pattern5.sfx.tick matches 1.. run scoreboard players remove @s bosses.the_shaman.pattern5.sfx.tick 1
execute unless score @s bosses.the_shaman.pattern5.sfx.tick matches 1.. run stopsound @a * entity.elder_guardian.curse
execute unless score @s bosses.the_shaman.pattern5.sfx.tick matches 1.. run scoreboard players reset @s bosses.the_shaman.pattern5.sfx.tick
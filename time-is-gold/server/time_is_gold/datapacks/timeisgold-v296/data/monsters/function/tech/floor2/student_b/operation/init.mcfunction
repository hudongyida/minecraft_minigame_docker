# 실행 인자: 능력을 사용하는 student_b 엔티티

execute at @s anchored eyes run rotate @s facing entity @p eyes
execute at @s anchored eyes run function monsters:tech/floor2/student_b/tracking_object_call

# SFX
execute at @s run playsound entity.generic.eat player @a ~ ~ ~ 2 0.5
execute at @s run playsound item.book.page_turn player @a ~ ~ ~ 2 1
execute at @s run playsound item.book.page_turn player @a ~ ~ ~ 2 1
execute at @s run playsound item.book.page_turn player @a ~ ~ ~ 2 1
execute at @s run playsound item.book.page_turn player @a ~ ~ ~ 2 1

# VFX
execute at @s run particle pale_oak_leaves ~ ~1.25 ~ 0.2 0.2 0.2 1 8 force

tag @s remove student_b.ability_enabled
data remove entity @s equipment.mainhand

scoreboard players set @s monsters.floor2.student_b.recharge 100
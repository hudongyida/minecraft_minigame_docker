#防御力を保存
execute store result score @s reserve_1 run attribute @s generic.armor get
#防御力が上がっていなければ中断
execute if score @s reserve_1 matches ..0 run return 0


#armor_bar
function hide_and_seek:ui/armor_bar/1/

#結合
function hide_and_seek:ui/armor_bar/combine with storage macro: ui
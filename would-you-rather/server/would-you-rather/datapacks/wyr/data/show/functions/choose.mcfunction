tp @s -935 70 7 180 5
gamemode adventure @s
tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":"> ","color":"blue"},{"selector":"@a[team=select]"},{"text":", 你的选择是什么? 你还有 ","color":"aqua"},{"text":"10","color":"green","underlined":true},{"text":" 秒钟.","color":"aqua"}]
execute as @a[tag=playing] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 0.9
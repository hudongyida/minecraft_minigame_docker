bossbar set minecraft:bettime players @a
bossbar set minecraft:bettime visible true
scoreboard players set $time bet_bar 200
scoreboard players set $time beat 0
scoreboard players set @a drop_succeed 0
scoreboard players set @a drop_abstain 0
scoreboard players set @a drop_fail 0
gamemode adventure @a[tag=playing,gamemode=!adventure]
##removed function here
effect clear @a[tag=playing]
effect give @a[tag=playing,team=wyr] invisibility 10000 255 true
effect give @a[tag=playing,team=wyr] levitation 10000 255 true
effect give @a[tag=playing,team=wyr] weakness 10000 255 true
effect give @a[tag=playing,team=wyr] fire_resistance 10000 255 true
 
effect give @a[team=select] slowness 10000 255 true
effect give @a[team=select] jump_boost 10000 200 true
tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":"> ","color":"blue"},{"text":"现在你可以投票决定是否","color":"aqua"},{"selector":"@a[tag=selecting]"},{"text":"会成功或失败. 如果你答对了, 你将获得分数, 但答错了, 你将失去分数. 你现在有 ","color":"aqua"},{"text":"10","color":"green","underlined":true},{"text":" 秒钟.","color":"aqua","underlined":false}] 
playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 0.9
replaceitem entity @a[team=wyr] hotbar.2 lime_concrete{display:{Name:"[{\"text\":\"按\",\"italic\":false,\"color\":\"green\"},{\"keybind\":\"key.drop\",\"italic\":false},{\"text\":\"来投票: \\\"有效\\\"\",\"color\":\"green\",\"italic\":false}]"},Die:1}

replaceitem entity @a[team=wyr] hotbar.4 purple_concrete{display:{Name:"[{\"text\":\"按\",\"italic\":false,\"color\":\"light_purple\"},{\"keybind\":\"key.drop\",\"italic\":false},{\"text\":\"来: \\\"弃权\\\"\",\"color\":\"light_purple\",\"italic\":false}]"},Die:1}

replaceitem entity @a[team=wyr] hotbar.6 red_concrete{display:{Name:"[{\"text\":\"按\",\"italic\":false,\"color\":\"red\"},{\"keybind\":\"key.drop\",\"italic\":false},{\"text\":\"来投票: \\\"无效\\\"\",\"color\":\"red\",\"italic\":false}]"},Die:1}
scoreboard players operation @s bosses.utils.cutscene.anim_tick = @s bosses.utils.cutscene.tick
scoreboard players operation @s bosses.utils.cutscene.anim_tick *= #100 scoreboardConstant
scoreboard players operation @s bosses.utils.cutscene.anim_tick /= #SYSTEM bosses.utils.cutscene.transition
scoreboard players operation @s bosses.utils.cutscene.anim_tick *= #45 scoreboardConstant
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get @s bosses.utils.cutscene.anim_tick
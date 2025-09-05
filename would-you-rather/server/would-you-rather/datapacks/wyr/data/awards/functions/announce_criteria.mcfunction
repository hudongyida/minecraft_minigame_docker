scoreboard objectives remove award_calculate
scoreboard objectives add award_calculate dummy
tag @a remove award_winner
execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_sel_time] as @a[tag=playing] at @s run scoreboard players operation @s award_calculate = @s awd_sel_time
execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_run] as @a[tag=playing] at @s run scoreboard players operation @s award_calculate = @s awd_run
execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_fail] as @a[tag=playing] at @s run scoreboard players operation @s award_calculate = @s awd_fail
execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_companions] as @a[tag=playing] at @s run scoreboard players operation @s award_calculate = @s awd_companions
execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_companions_2] as @a[tag=playing] at @s run scoreboard players operation @s award_calculate = @s awd_companions
execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_random] as @a[tag=playing] at @s run scoreboard players operation @s award_calculate = @s awd_random
execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_jump] as @a[tag=playing] at @s run scoreboard players operation @s award_calculate = @s awd_jump
execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_gene] run tag @r[tag=playing] add award_winner
execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_spectate] as @a[tag=playing] at @s run scoreboard players operation @s award_calculate = @s awd_spectate
execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_drop] as @a[tag=playing] at @s run scoreboard players operation @s award_calculate = @s awd_drop
execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_sneak] as @a[tag=playing] at @s run scoreboard players operation @s award_calculate = @s awd_sneak
execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_taken] as @a[tag=playing] at @s run scoreboard players operation @s award_calculate = @s awd_taken
execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_dealt] as @a[tag=playing] at @s run scoreboard players operation @s award_calculate = @s awd_dealt
execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_in_scenario] as @a[tag=playing] at @s run scoreboard players operation @s award_calculate = @s awd_in_scenario
execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_mob_kills] as @a[tag=playing] at @s run scoreboard players operation @s award_calculate = @s awd_mob_kills
execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_walk] as @a[tag=playing] at @s run scoreboard players operation @s award_calculate = @s awd_walk
execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_movement] as @a[tag=playing] at @s run scoreboard players operation @s award_calculate = @s awd_movement
execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_jump_2] as @a[tag=playing] at @s run scoreboard players operation @s award_calculate = @s awd_jump
execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_drop_2] as @a[tag=playing] at @s run scoreboard players operation @s award_calculate = @s awd_drop
execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_sneak_2] as @a[tag=playing] at @s run scoreboard players operation @s award_calculate = @s awd_sneak
execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_dealt_2] as @a[tag=playing] at @s run scoreboard players operation @s award_calculate = @s awd_dealt
execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_taken_2] as @a[tag=playing] at @s run scoreboard players operation @s award_calculate = @s awd_taken
execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_run_2] as @a[tag=playing] at @s run scoreboard players operation @s award_calculate = @s awd_run
execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_hold_item] as @a[tag=playing] at @s run scoreboard players operation @s award_calculate = @s awd_hold_item



scoreboard objectives remove fake_awards
scoreboard objectives add fake_awards dummy
scoreboard players set $check_place fake_awards 0
execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=award_least] run scoreboard players set $check_place fake_awards 100000000
execute as @a[tag=playing] at @s run scoreboard players operation @s fake_awards = @s award_calculate
execute unless entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=award_least] as @a[tag=playing] at @s run scoreboard players operation $check_place fake_awards > @s fake_awards
execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=award_least] as @a[tag=playing] at @s run scoreboard players operation $check_place fake_awards < @s fake_awards
execute as @a[tag=playing] at @s run scoreboard players operation @s fake_awards -= $check_place fake_awards

execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_gene] run scoreboard players set @a[tag=playing] fake_awards 1000
scoreboard players set @a[tag=playing,tag=award_winner] fake_awards 0
tag @r[scores={fake_awards=0},tag=playing] add award_winner

execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=award_second] as @a[scores={fake_awards=0},tag=playing] at @s run scoreboard players operation @s award_calculate /= $20 number
execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=award_block] as @a[scores={fake_awards=0},tag=playing] at @s run scoreboard players operation @s award_calculate /= $100 number
execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=award_round] as @a[scores={fake_awards=0},tag=playing] at @s run scoreboard players operation @s award_calculate -= $round round_criteria

execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_sel_time] run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":"> ","color":"blue"},{"text":"当","color":"aqua"},{"score":{"objective":"award_calculate","name":"@a[tag=award_winner,tag=playing,scores={fake_awards=0}]"}},{"text":"秒来选择场景的, 奖励将授予. . .","color":"aqua"}]
execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_run] run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":"> ","color":"blue"},{"text":"跑过","color":"aqua"},{"score":{"objective":"award_calculate","name":"@a[tag=award_winner,tag=playing,scores={fake_awards=0}]"}},{"text":"块方块, 奖励将授予. . .","color":"aqua"}]
execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_fail] run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":"> ","color":"blue"},{"text":"有","color":"aqua"},{"score":{"objective":"award_calculate","name":"@a[tag=award_winner,tag=playing,scores={fake_awards=0}]"}},{"text":"个场景失败时, 奖励将授予. . .","color":"aqua"}]
execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_companions] run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":"> ","color":"blue"},{"text":"当","color":"aqua"},{"score":{"objective":"award_calculate","name":"@a[tag=award_winner,tag=playing,scores={fake_awards=0}]"}},{"text":"个同伴在场景时, 奖励将授予. . .","color":"aqua"}]
execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_companions_2] run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":"> ","color":"blue"},{"text":"当","color":"aqua"},{"score":{"objective":"award_calculate","name":"@a[tag=award_winner,tag=playing,scores={fake_awards=0}]"}},{"text":"个同伴在场景时, 奖励将授予. . .","color":"aqua"}]
execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_random] run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":"> ","color":"blue"},{"text":"做了","color":"aqua"},{"score":{"objective":"award_calculate","name":"@a[tag=award_winner,tag=playing,scores={fake_awards=0}]"}},{"text":"个随机场景决策时, 奖励将授予. . .","color":"aqua"}]
execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_jump] run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":"> ","color":"blue"},{"text":"有","color":"aqua"},{"score":{"objective":"award_calculate","name":"@a[tag=award_winner,tag=playing,scores={fake_awards=0}]"}},{"text":"次跳跃时, 奖励将授予. . .","color":"aqua"}]
execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_gene] run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":"> ","color":"blue"},{"text":"这是我的最爱! 该奖项授予 . . .","color":"aqua"}]
execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_spectate] run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":"> ","color":"blue"},{"text":"有","color":"aqua"},{"score":{"objective":"award_calculate","name":"@a[tag=award_winner,tag=playing,scores={fake_awards=0}]"}},{"text":"秒旁观时, 奖励将授予. . .","color":"aqua"}]
execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_drop] run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":"> ","color":"blue"},{"text":"有","color":"aqua"},{"score":{"objective":"award_calculate","name":"@a[tag=award_winner,tag=playing,scores={fake_awards=0}]"}},{"text":"件物品被丢出, 奖励将授予. . .","color":"aqua"}]
execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_sneak] run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":"> ","color":"blue"},{"text":"有","color":"aqua"},{"score":{"objective":"award_calculate","name":"@a[tag=award_winner,tag=playing,scores={fake_awards=0}]"}},{"text":"秒都在蹲下, 奖励将授予. . .","color":"aqua"}]
execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_taken] run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":"> ","color":"blue"},{"text":"受到","color":"aqua"},{"score":{"objective":"award_calculate","name":"@a[tag=award_winner,tag=playing,scores={fake_awards=0}]"}},{"text":"点伤害, 奖励将授予. . .","color":"aqua"}]
execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_dealt] run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":"> ","color":"blue"},{"text":"造成","color":"aqua"},{"score":{"objective":"award_calculate","name":"@a[tag=award_winner,tag=playing,scores={fake_awards=0}]"}},{"text":"点伤害, 奖励将授予. . .","color":"aqua"}]
execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_in_scenario] run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":"> ","color":"blue"},{"text":"有","color":"aqua"},{"score":{"objective":"award_calculate","name":"@a[tag=award_winner,tag=playing,scores={fake_awards=0}]"}},{"text":"秒都在玩场景时, 奖励将授予. . .","color":"aqua"}]
execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_mob_kills] run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":"> ","color":"blue"},{"text":"有","color":"aqua"},{"score":{"objective":"award_calculate","name":"@a[tag=award_winner,tag=playing,scores={fake_awards=0}]"}},{"text":"个怪物被击杀时, 奖励将授予. . .","color":"aqua"}]
execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_walk] run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":"> ","color":"blue"},{"text":"走过","color":"aqua"},{"score":{"objective":"award_calculate","name":"@a[tag=award_winner,tag=playing,scores={fake_awards=0}]"}},{"text":"块方块, 奖励将授予. . .","color":"aqua"}]
execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_movement] run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":"> ","color":"blue"},{"text":"走过","color":"aqua"},{"score":{"objective":"award_calculate","name":"@a[tag=award_winner,tag=playing,scores={fake_awards=0}]"}},{"text":"块方块, 奖励将授予. . .","color":"aqua"}]
execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_jump_2] run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":"> ","color":"blue"},{"text":"有","color":"aqua"},{"score":{"objective":"award_calculate","name":"@a[tag=award_winner,tag=playing,scores={fake_awards=0}]"}},{"text":"次跳跃, 奖励将授予. . .","color":"aqua"}]
execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_drop_2] run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":"> ","color":"blue"},{"text":"有","color":"aqua"},{"score":{"objective":"award_calculate","name":"@a[tag=award_winner,tag=playing,scores={fake_awards=0}]"}},{"text":"件物品被丢出时, 奖励将授予. . .","color":"aqua"}]
execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_sneak_2] run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":"> ","color":"blue"},{"text":"有","color":"aqua"},{"score":{"objective":"award_calculate","name":"@a[tag=award_winner,tag=playing,scores={fake_awards=0}]"}},{"text":"秒蹲下时, 奖励将授予. . .","color":"aqua"}]
execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_dealt_2] run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":"> ","color":"blue"},{"text":"造成","color":"aqua"},{"score":{"objective":"award_calculate","name":"@a[tag=award_winner,tag=playing,scores={fake_awards=0}]"}},{"text":"点伤害, 奖励将授予. . .","color":"aqua"}]
execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_taken_2] run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":"> ","color":"blue"},{"text":"受到","color":"aqua"},{"score":{"objective":"award_calculate","name":"@a[tag=award_winner,tag=playing,scores={fake_awards=0}]"}},{"text":"点伤害, 奖励将授予. . .","color":"aqua"}]
execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_run_2] run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":"> ","color":"blue"},{"text":"跑过","color":"aqua"},{"score":{"objective":"award_calculate","name":"@a[tag=award_winner,tag=playing,scores={fake_awards=0}]"}},{"text":"块方块, 奖励将授予. . .","color":"aqua"}]
execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_hold_item] run tellraw @a [{"text":"<","color":"blue"},{"text":"吉恩","color":"aqua"},{"text":"> ","color":"blue"},{"text":"有","color":"aqua"},{"score":{"objective":"award_calculate","name":"@a[tag=award_winner,tag=playing,scores={fake_awards=0}]"}},{"text":"秒都持有物品时, 奖励将授予. . .","color":"aqua"}]

##execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_sel_time] run say h
##execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_run] run say h
##execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_fail] run say h
##execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_companions] run say h
##execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_companions_2] run say h 
##execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_random] run say h
##execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_jump] run say h
##execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_gene] run say h
##execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_spectate] run say h
##execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_drop] run say h
##execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_sneak] run say h
##execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_taken] run say h
##execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_dealt] run say h
##execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_in_scenario] run say h
##execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_mob_kills] run say h
##execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_walk] run say h
##execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_movement] run say h
##execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_jump_2] run say h
##execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_drop_2] run say h
##execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_sneak_2] run say h
##execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_dealt_2] run say h
##execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_taken_2] run say h
##execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_run_2] run say h
##execute if entity @e[type=area_effect_cloud,tag=award,tag=choose_award,tag=awd_hold_item] run say h


execute as @a[tag=playing] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 0.9
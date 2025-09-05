function scenario:success_scenario

tellraw @s [{"text":"你救出了俘虏!","color":"light_purple"}]
execute unless entity @a[team=rap,gamemode=adventure] run function scenario:rescue_royalty/end
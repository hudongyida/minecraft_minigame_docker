# 실행 인자: @a

execute as @s[predicate=system:player] if score @s timeX10 matches ..0 run function system:gamemanager/player_death/init
execute as @s[predicate=system:player] run function system:gamemanager/player_death/reset_trigger
execute as @s[scores={system.gamemanager.player_death.titlecount=1..}] run scoreboard players add @s system.gamemanager.player_death.titlecount 1
execute as @s[scores={system.gamemanager.player_death.titlecount=1..100}] run function system:gamemanager/player_death/death_message/title
execute as @s[scores={system.gamemanager.player_death.titlecount=101..}] run function system:gamemanager/game_over/title

# esacpe dungeon
execute if score #SYSTEM system.gamemanager.game_session matches 1.. if score #SYSTEM system.gamemanager.dungeon_generation_check matches 1.. as @s[predicate=system:player,tag=!admin] if predicate system:escape_dungeon if loaded ~ ~ ~ run scoreboard players set @s timeX10 0
# 보스전이 진행 중일 때 매 틱마다 실행되는 함수.
execute as @e[type=armor_stand,tag=dungeon.bossfight.armor_stand.boss_arena] at @s unless entity @e[tag=boss,dx=48,dy=-256,dz=48] run function system:gamemanager/bossfight/terminate
execute as @e[type=interaction,tag=dungeon.bossfight.disabled_door] if function system:utils/interaction/interaction_check run data remove entity @s interaction

# 보스전 음악 루프
scoreboard players add #SYSTEM bosses.utils.music.tick 1
execute if score #SYSTEM bosses.utils.music.tick > #SYSTEM bosses.utils.music.loop_tick run function bosses:tech/utils/music/start
execute if score #SYSTEM bosses.utils.music.tick > #SYSTEM bosses.utils.music.loop_tick run scoreboard players reset #SYSTEM bosses.utils.music.tick
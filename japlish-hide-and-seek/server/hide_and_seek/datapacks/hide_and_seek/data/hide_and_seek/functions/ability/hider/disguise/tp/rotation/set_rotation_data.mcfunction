# 回転のロック切り替え
scoreboard players add @s disguise_block_rotation_lock 0
execute as @s[scores={disguise_block_rotation_lock=0}] run scoreboard players set @s disguise_block_rotation_lock 2
execute as @s[scores={disguise_block_rotation_lock=1}] run scoreboard players set @s disguise_block_rotation_lock 0
execute as @s[scores={disguise_block_rotation_lock=2}] run scoreboard players set @s disguise_block_rotation_lock 1

# データを保存
#データがなければ保存
execute unless score @s disguise_block_rotation_player matches -1000000000.. run execute store result score @s disguise_block_rotation_player run data get entity @s Rotation[0] 
execute unless score @s disguise_block_rotation_block matches -1000000000.. run execute store result score @s disguise_block_rotation_block run data get entity @s Rotation[0]
#block_displayのrotationを上書き
scoreboard players operation @s disguise_block_rotation_block = @s disguise_block_rotation_4
#rotation_playerをrotation_player_oldに退避
scoreboard players operation @s disguise_block_rotation_player_old = @s disguise_block_rotation_player
#今のplayerのrotationを保存
execute store result score @s disguise_block_rotation_player run data get entity @s Rotation[0]

# 以下計算
#差を計算(①player_old-block)
scoreboard players operation @s disguise_block_rotation_1 = @s disguise_block_rotation_player_old
scoreboard players operation @s disguise_block_rotation_1 -= @s disguise_block_rotation_block
#差を計算(②player-player_old)
scoreboard players operation @s disguise_block_rotation_2 = @s disguise_block_rotation_player
scoreboard players operation @s disguise_block_rotation_2 -= @s disguise_block_rotation_player_old
#差を計算(①+②)
scoreboard players operation @s disguise_block_rotation_3 = @s disguise_block_rotation_1
scoreboard players operation @s disguise_block_rotation_3 += @s disguise_block_rotation_2
#回転を計算(player - ①player-player_old - ②player_old-block)
scoreboard players operation @s disguise_block_rotation_block = @s disguise_block_rotation_player
scoreboard players operation @s disguise_block_rotation_block -= @s disguise_block_rotation_3
# ブロックの輪郭を表示
#変装可能ブロック
execute unless block ~ ~ ~ #hide_and_seek:no_collision unless block ~ ~ ~ #hide_and_seek:no_disguise align xyz positioned ~0.5 ~0.5 ~0.5 run function hide_and_seek:ability/hider/disguise/particles/block/common
#変装不可ブロック
execute unless block ~ ~ ~ #hide_and_seek:no_collision if block ~ ~ ~ #hide_and_seek:no_disguise align xyz positioned ~0.5 ~0.5 ~0.5 run function hide_and_seek:ability/hider/disguise/particles/block/no_disguise

# ブロックデータを取得
execute as @s[scores={right_click=1..}] unless block ~ ~ ~ #hide_and_seek:no_collision unless block ~ ~ ~ #hide_and_seek:no_disguise run function hide_and_seek:ability/hider/disguise/get_block_data/

# 再帰処理
execute if entity @s[distance=..15] if block ~ ~ ~ #hide_and_seek:no_collision positioned ^ ^ ^1 run function hide_and_seek:ability/hider/disguise/raycast/work
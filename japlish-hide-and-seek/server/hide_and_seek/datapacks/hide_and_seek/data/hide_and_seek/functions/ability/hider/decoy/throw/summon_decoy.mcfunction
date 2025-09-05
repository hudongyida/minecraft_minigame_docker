#particle explosion ~ ~ ~

# 自身に処理中のタグを追加
tag @s add summoning

# Throwerが実行
execute on origin run function hide_and_seek:ability/hider/decoy/summon/

# 自身をキル
kill @s
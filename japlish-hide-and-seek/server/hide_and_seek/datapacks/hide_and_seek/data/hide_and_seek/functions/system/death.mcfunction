#スポーンポイントを再設定
execute at @e[type=marker,tag=start] run spawnpoint @s ~ ~ ~

#タグをリセット
scoreboard players set @s death 0

#チームをseekerに変更
function hide_and_seek:team/seeker
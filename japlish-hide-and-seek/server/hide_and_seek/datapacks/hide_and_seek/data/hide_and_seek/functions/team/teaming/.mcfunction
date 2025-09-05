#全員が自分の分身マーカーを召喚
execute as @a at @s run summon marker ~ ~ ~ {Tags:["player_dummy"]}

#seekerを割り振る
$tag @e[type=marker,tag=player_dummy,sort=random,limit=$(count)] add seeker

#playerをseekerに
execute as @e[type=marker,tag=player_dummy,tag=seeker] at @s as @a[limit=1,sort=nearest,team=!seeker] run function hide_and_seek:team/seeker

#余りをhiderに
execute as @a[team=!seeker] run function hide_and_seek:team/hider

#おかたづけ
kill @e[type=marker,tag=player_dummy]
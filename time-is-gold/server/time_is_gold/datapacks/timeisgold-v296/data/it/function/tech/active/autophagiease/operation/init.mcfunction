# 실행 인자: 아이템을 사용한 플레이어

$execute unless entity @e[type=creeper,tag=item.autophagiease.target.$(playerid)] run return run function it:tech/active/autophagiease/operation/failed

$execute at @s as @n[type=creeper,tag=item.autophagiease.target.$(playerid)] run function it:tech/active/autophagiease/operation/ignite {playerid:$(playerid)}
function it:tech/utils/cooldown/init {scoreboard:item.autophagiease.cooldown, value:300}

# SFX
execute at @s run playsound minecraft:entity.silverfish.ambient hostile @a ~ ~ ~ 1 2
execute at @s run playsound item.flintandsteel.use player @a ~ ~ ~ 1 2
execute at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 0.5 1

$tag @e[type=creeper,tag=item.autophagiease.target.$(playerid)] remove item.autophagiease.target.$(playerid)
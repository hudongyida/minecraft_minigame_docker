# 실행 인자: Supercooled Ice 아이템을 사용한 플레이어

$execute positioned ~ ~.1 ~ align y unless block ~ ~-0.01 ~ #it:air if block ~ ~ ~ #it:air run tag @a[scores={playerid=$(playerid)},limit=1] add item.supercooled_ice.pos_valid

# Fail
$execute as @a[scores={playerid=$(playerid)},tag=!item.supercooled_ice.pos_valid] run function it:tech/utils/notify/init {function:"it:tech/active/supercooled_ice/notify/pos_invalid"}
$execute as @a[scores={playerid=$(playerid)},tag=!item.supercooled_ice.pos_valid] run function it:tech/utils/cooldown/init {scoreboard:item.supercooled_ice.cooldown,value:4}

# 成功
$execute as @a[scores={playerid=$(playerid)},tag=item.supercooled_ice.pos_valid] positioned ~ ~ ~ run summon minecraft:tnt ~ ~ ~ {Tags:[item.supercooled_ice.bomb],fuse:101s,block_state:{Name:"minecraft:blue_ice"},data:{playerid:$(playerid)}}
$execute as @a[scores={playerid=$(playerid)},tag=item.supercooled_ice.pos_valid] run function it:tech/utils/cooldown/init {scoreboard:item.supercooled_ice.cooldown,value:900}

# SFX
$execute if entity @a[scores={playerid=$(playerid)},tag=item.supercooled_ice.pos_valid] positioned ~ ~ ~ align y run playsound minecraft:entity.tnt.primed player @a ~ ~1 ~ 1 1

tag @a remove item.supercooled_ice.pos_valid
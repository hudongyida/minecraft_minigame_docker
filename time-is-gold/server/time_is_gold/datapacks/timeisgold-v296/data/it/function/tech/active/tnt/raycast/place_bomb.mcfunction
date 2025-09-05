# 실행 인자: Supercooled Ice 아이템을 사용한 플레이어

$execute positioned ~ ~ ~ unless block ~ ~-1 ~ #it:air if block ~ ~ ~ #it:air run tag @a[scores={playerid=$(playerid)},limit=1] add item.tnt.pos_valid

# Fail
$execute as @a[scores={playerid=$(playerid)},tag=!item.tnt.pos_valid] run function it:tech/utils/notify/init {function:"it:tech/active/tnt/notify/pos_invalid"}
$execute as @a[scores={playerid=$(playerid)},tag=!item.tnt.pos_valid] run function it:tech/utils/cooldown/init {scoreboard:item.tnt.cooldown, value:4}

# 成功
$execute as @a[scores={playerid=$(playerid)},tag=item.tnt.pos_valid] positioned ~ ~ ~ run summon minecraft:tnt ~ ~ ~ {Tags:[item.tnt.bomb, item.tnt.bomb.uninitialized],fuse:81s,block_state:{Name:"minecraft:tnt"}}
$execute positioned ~-1 ~-1 ~-1 as @n[type=tnt,tag=item.tnt.bomb.uninitialized,dx=2,dy=2,dz=2] run function it:tech/active/tnt/raycast/set_data {playerid:$(playerid)}
$execute as @a[scores={playerid=$(playerid)},tag=item.tnt.pos_valid] run function it:tech/utils/cooldown/init {scoreboard:item.tnt.cooldown, value:900}

# SFX
$execute if entity @a[scores={playerid=$(playerid)},tag=item.tnt.pos_valid] positioned ~ ~ ~ align y run playsound minecraft:entity.tnt.primed player @a ~ ~ ~ 1 1

tag @a remove item.tnt.pos_valid
$damage @s 8 fireball by @a[scores={playerid=$(playerid)},limit=1]
function it:tech/utils/effect/ignite/apply {firetick:60}
particle flame ~ ~ ~ 0 0 0 0.5 10 force
playsound entity.player.hurt_on_fire player @a ~ ~ ~ 1 0 0
playsound minecraft:entity.wither.break_block hostile @a ~ ~ ~ 0.2 0.5
playsound minecraft:entity.generic.explode neutral @a ~ ~ ~ 0.3 2
playsound minecraft:item.firecharge.use player @a ~ ~ ~ 0.5 0.5

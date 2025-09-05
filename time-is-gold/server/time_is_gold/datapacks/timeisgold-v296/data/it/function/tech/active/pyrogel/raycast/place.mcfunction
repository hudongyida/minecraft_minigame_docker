$execute as @n[scores={playerid=$(playerid)}] positioned ~ ~ ~ if block ~ ~-0.5 ~ #it:air run return run function it:tech/active/pyrogel/functions/notify


execute positioned ~ ~ ~ run summon marker ~ ~ ~ {Tags:["item.pyrogel.marker","admin.kill_on_reset"]}
execute positioned ~ ~ ~ run particle block{block_state:"honey_block"} ~ ~ ~ 0 0 0 0.5 2 force
execute positioned ~ ~ ~ run playsound block.honey_block.place block @a ~ ~ ~ 0.5 2 0
$execute as @a[scores={playerid=$(playerid)}] run function it:tech/utils/cooldown/init {scoreboard:item.pyrogel.cooldown, value:600}
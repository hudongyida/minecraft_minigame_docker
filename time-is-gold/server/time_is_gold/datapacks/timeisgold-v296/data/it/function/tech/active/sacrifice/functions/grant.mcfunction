function it:tech/utils/use_cost/item_mainhand
$scoreboard players set @s item.sacrifice.user $(playerid)
playsound minecraft:ui.toast.challenge_complete player @a ~ ~ ~ 0.3 1 0
scoreboard players add @s dungeon.warp 10
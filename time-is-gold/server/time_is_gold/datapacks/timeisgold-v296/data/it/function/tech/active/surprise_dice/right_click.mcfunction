function it:tech/utils/detect/right_click {advancement:"it:active/surprise_dice_right_click", item:player_head, item_tag:surprise_dice, tag:item.surprise_dice.pre, type:0}
function it:tech/utils/cooldown/check {failTag:item.surprise_dice.fail, passTag:item.surprise_dice.use, inputTag:item.surprise_dice.pre, scoreboard:item.surprise_dice.cooldown, status:0}
tag @s[tag=item.surprise_dice.fail] remove item.surprise_dice.fail

execute as @s[tag=item.surprise_dice.use] run function it:tech/utils/use_cost/on_right_click {item:player_head, item_tag:surprise_dice}
execute as @s[tag=item.surprise_dice.use] run function it:tech/utils/cooldown/init {scoreboard:item.surprise_dice.cooldown, value:4}
# summon dice
execute as @s[tag=item.surprise_dice.use] at @s run summon item ~ ~ ~ {CustomNameVisible:1b,Age:-32768,PickupDelay:32767,Invulnerable:1b,Motion:[0.0,0.4,0.0],Tags:["item.surprise_dice.dice"],CustomName:{"text":"成功","color":"green","bold":true},Item:{id:"minecraft:player_head",count:1b,components:{profile:{id:[I;854534564,-1660533141,-1192368249,514861804],properties:[{name:texture, value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODQ1NTVhMzY0MTE5NWMxNjg2MGU4MmYzODlmZDI3Y2JkMTE3ODA0OWJkN2IxYmI3N2IwMzFmYjM5OGE2NDQ4MiJ9fX0="}]}}}}
tag @s[tag=item.surprise_dice.use] remove item.surprise_dice.use
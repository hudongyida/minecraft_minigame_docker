execute as @s[advancements={it:passive/scarletron_hit=true}] run return run advancement revoke @s only it:passive/scarletron_hit

tag @s add item.scarletron.attack
function it:tech/utils/cooldown/check {scoreboard:item.scarletron.cooldown, inputTag:item.scarletron.attack, passTag:item.scarletron.ready, failTag:item.scarletron.fail, status:0}
tag @s[tag=item.scarletron.fail] remove item.scarletron.fail

$execute if entity @s[tag=item.scarletron.ready] as @e[tag=monster,scores={entityid=$(entityid)},limit=1] run function it:tech/passive/scarletron/monster_attack/init
execute as @s[tag=item.scarletron.ready] run function it:tech/utils/cooldown/init {scoreboard:item.scarletron.cooldown}
tag @s remove item.scarletron.ready

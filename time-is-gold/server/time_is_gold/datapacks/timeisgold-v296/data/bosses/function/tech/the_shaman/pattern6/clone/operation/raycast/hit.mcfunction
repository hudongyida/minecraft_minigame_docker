# $(monsteruuid)    - 분신 엔티티 UUID Token ($(monsteruuid) == $(selfuuid))

$effect give $(monsteruuid) minecraft:glowing 1 20 true
$scoreboard players add $(monsteruuid) bosses.the_shaman.pattern6.clone.on_sight 1
$tag @s add bosses.the_shaman.pattern6.clone.watching.$(monsteruuid)
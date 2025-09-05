#say chain
tag @s add hit
$scoreboard players set $(player) $(scoreboard)_itt 30
tp @s ~ 300 ~
$function it:tech/utils/raycast/chain/raycast {player:$(player),playeruuid:"$(playeruuid)",scoreboard:$(scoreboard),particle:$(particle),speed:$(speed),hitbox_1:$(hitbox_1),hitbox_2:$(hitbox_2),hitbox_3:$(hitbox_3),wall:$(wall),hitend:$(hitend),type:$(type),path:$(path),range:$(range),endfunction:$(endfunction),chainDistance:$(chainDistance)}
tp @s ~ ~ ~

# chain the chain
$execute if score $(player) $(scoreboard) matches ..2 if entity @e[tag=$(scoreboard)_origin,distance=..30] run function it:tech/utils/raycast/chain/hit {player:$(player),playeruuid:"$(playeruuid)",scoreboard:$(scoreboard),particle:$(particle),speed:$(speed),hitbox_1:$(hitbox_1),hitbox_2:$(hitbox_2),hitbox_3:$(hitbox_3),wall:$(wall),hitend:$(hitend),type:$(type),path:$(path),range:$(range),endfunction:$(endfunction),chainDistance:$(chainDistance)}
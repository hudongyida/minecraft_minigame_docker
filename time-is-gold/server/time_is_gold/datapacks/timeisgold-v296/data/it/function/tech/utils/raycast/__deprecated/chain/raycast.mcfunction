$function it:tech/$(type)/$(path)/raycast/$(particle) {playeruuid:"$(playeruuid)"}
$scoreboard players remove $(player) $(scoreboard)_itt 1

$execute if score isStopOnWall $(scoreboard) matches 1 positioned ~ ~ ~ unless block ~ ~ ~ #it:air run scoreboard players set $(player) $(scoreboard)_itt -1
$execute if score isHit $(scoreboard) matches 1 positioned ~-$(hitbox_1) ~-$(hitbox_1) ~-$(hitbox_1) as @e[tag=monster,dx=0] positioned ~-$(hitbox_2) ~-$(hitbox_2) ~-$(hitbox_2) if entity @s[dx=0] run scoreboard players set $(player) $(scoreboard)_itt -1

$execute if score $(player) $(scoreboard)_itt matches ..0 positioned ~ ~ ~ run function it:tech/$(type)/$(path)/raycast/$(endfunction) {player:$(player),playeruuid:"$(playeruuid)"}
$execute if score $(player) $(scoreboard)_itt matches 1.. positioned ^ ^ ^$(speed) run function it:tech/utils/raycast/chain/raycast {player:$(player),playeruuid:"$(playeruuid)",scoreboard:$(scoreboard),particle:$(particle),speed:$(speed),hitbox_1:$(hitbox_1),hitbox_2:$(hitbox_2),hitbox_3:$(hitbox_3),wall:$(wall),hitend:$(hitend),type:$(type),path:$(path),range:$(range),endfunction:$(endfunction),chainDistance:$(chainDistance)}

$execute positioned ~-$(hitbox_1) ~-$(hitbox_1) ~-$(hitbox_1) as @e[tag=monster,tag=!hit,dx=0] positioned ~-$(hitbox_2) ~-$(hitbox_2) ~-$(hitbox_2) if entity @s[dx=0] positioned ~$(hitbox_3) ~$(hitbox_3) ~$(hitbox_3) run function it:tech/utils/raycast/chain/hit {player:$(player),playeruuid:"$(playeruuid)",scoreboard:$(scoreboard),particle:$(particle),speed:$(speed),hitbox_1:$(hitbox_1),hitbox_2:$(hitbox_2),hitbox_3:$(hitbox_3),wall:$(wall),hitend:$(hitend),type:$(type),path:$(path),range:$(range),endfunction:$(endfunction),chainDistance:$(chainDistance)}
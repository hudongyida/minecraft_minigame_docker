$scoreboard players remove $(player) $(scoreboard) 1

tag @s add hit

$execute at @e[tag=monster,tag=!hit,sort=random,distance=..$(chainDistance)] anchored eyes facing entity @s eyes as @e[tag=monster,distance=0,limit=1] run function it:tech/utils/raycast/chain/chain {player:$(player),playeruuid:"$(playeruuid)",scoreboard:$(scoreboard),particle:$(particle),speed:$(speed),hitbox_1:$(hitbox_1),hitbox_2:$(hitbox_2),hitbox_3:$(hitbox_3),wall:$(wall),hitend:$(hitend),type:$(type),path:$(path),range:$(range),endfunction:$(endfunction),chainDistance:$(chainDistance)}
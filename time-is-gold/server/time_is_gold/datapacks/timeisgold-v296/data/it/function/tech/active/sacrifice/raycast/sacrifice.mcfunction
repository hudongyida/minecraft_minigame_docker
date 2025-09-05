$execute as @n[scores={playerid=$(playerid)}] run function it:tech/active/sacrifice/functions/grant {playerid:$(playerid)}
$function it:tech/active/sacrifice/functions/die {playerid:$(playerid)}
$tag @s add item.sacrifice.target.$(playerid)
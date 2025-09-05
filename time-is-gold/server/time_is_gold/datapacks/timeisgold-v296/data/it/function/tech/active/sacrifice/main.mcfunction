execute as @a[tag=item.scarifice.player] run function it:tech/active/sacrifice/functions/die
function it:tech/utils/cooldown/tick {scoreboard:item.sacrifice.cooldown}
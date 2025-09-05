function it:tech/utils/cooldown/tick {scoreboard:item.tome_of_hyper_epsilon_delta.cooldown}

execute as @e[tag=monster,scores={item.tome_of_hyper_epsilon_delta.tick=1..}] run function it:tech/active/tome_of_hyper_epsilon_delta/tick
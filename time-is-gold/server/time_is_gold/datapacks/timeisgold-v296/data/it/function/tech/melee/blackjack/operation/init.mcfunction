execute unless score @s item.blackjack.rank_sum matches 16.. at @s run function it:tech/melee/blackjack/operation/below_16
execute if score @s item.blackjack.rank_sum matches 16..17 at @s run function it:tech/melee/blackjack/operation/sum_16_17
execute if score @s item.blackjack.rank_sum matches 18..19 at @s run function it:tech/melee/blackjack/operation/sum_18_19
execute if score @s item.blackjack.rank_sum matches 20 at @s run function it:tech/melee/blackjack/operation/sum_20
execute if score @s item.blackjack.rank_sum matches 21 at @s run function it:tech/melee/blackjack/operation/sum_21
execute if score @s item.blackjack.rank_sum matches 22.. at @s run function it:tech/melee/blackjack/operation/overflow

scoreboard players reset @s item.blackjack.rank_sum
function it:tech/utils/playing_card/init

scoreboard players operation @s item.blackjack.damage_value = @s item.utils.playing_card.rank
scoreboard players operation @s item.blackjack.damage_value *= #2 scoreboardConstant
scoreboard players remove @s item.blackjack.damage_value 1
scoreboard players operation @s item.blackjack.rank_sum += @s item.utils.playing_card.rank

item modify entity @s weapon.mainhand it:melee/blackjack_update
function it:tech/utils/lore/attack_damage/init {offset:-2}
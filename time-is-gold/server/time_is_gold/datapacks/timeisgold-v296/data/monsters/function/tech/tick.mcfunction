# arrow_damage
function monsters:tech/global/arrow_modifier/tick

# remove
#function monsters:tech/global/remove/slime

# fear
#execute as @a run function monsters:tech/global/utils/fear/main

# monster_abilities
execute as @e[tag=monster] run function monsters:tech/monster_abilities
function monsters:tech/monster_abilities_subroutine

# tracking_object
function monsters:tech/global/utils/tracking_object/tick
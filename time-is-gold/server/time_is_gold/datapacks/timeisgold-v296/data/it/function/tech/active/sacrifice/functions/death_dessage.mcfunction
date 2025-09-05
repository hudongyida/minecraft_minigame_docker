#$tellraw @a [{"text":"✗ ","color":"red","italic":false}, {"selector":"@n[scores={item.sacrifice.user=$(target)}]"},{"text":"把","color":"gray","bold":false},{"selector":"@s","color":"gray","bold":false},{"text":"送向了","color":"gray","bold":false},{"text":"辉煌","color":"gold","bold":false},{"text":"。","color":"gray","bold":false}]
$tellraw @a {"translate":"system.gamemanager.player_death.sacrifice",with:[{"selector":"@n[scores={item.sacrifice.user=$(target)}]"},{"selector":"@s"}]}
scoreboard players reset @a item.sacrifice.user
scoreboard players reset @a item.sacrifice.target
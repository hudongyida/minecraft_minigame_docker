execute if entity @s[scores={cheer=0}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":":","color":"dark_aqua"},{"text":" 出发 ","color":"green"},{"selector":"@a[team=select]"},{"text":"!","color":"green"}]
execute if entity @s[scores={cheer=1}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":":","color":"dark_aqua"},{"text":" 我相信你! ","color":"green"}]
execute if entity @s[scores={cheer=2}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":":","color":"dark_aqua"},{"text":" 别让","color":"green"},{"text":"我","color":"red","underlined":true},{"text":"失望.","color":"green"}]
execute if entity @s[scores={cheer=3}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":":","color":"dark_aqua"},{"text":" 手刹!!!","color":"dark_green"}]
execute if entity @s[scores={cheer=4}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":":","color":"dark_aqua"},{"text":" 你行的.","color":"dark_green"}]
execute if entity @s[scores={cheer=5}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":":","color":"dark_aqua"},{"text":" 就连","color":"green"},{"text":"吉恩","color":"aqua"},{"text":"也希望你成功.","color":"green"}]
execute if entity @s[scores={cheer=6}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":":","color":"dark_aqua"},{"text":" 银河大脑!","color":"dark_green"}]
execute if entity @s[scores={cheer=7}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":":","color":"dark_aqua"},{"text":" <o/","color":"dark_green"}]
execute if entity @s[scores={cheer=8}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":":","color":"dark_aqua"},{"text":" 作者会引以为豪!","color":"gold","bold":true}]

playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1.1
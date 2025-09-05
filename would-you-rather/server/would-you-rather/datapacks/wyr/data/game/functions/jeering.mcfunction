execute if entity @s[scores={jeer=0}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":":","color":"dark_aqua"},{"text":" 请失败吧.","color":"red"}]
execute if entity @s[scores={jeer=1}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":":","color":"dark_aqua"},{"text":" 抱歉,但我需要你输掉.","color":"red"},{"text":" :","color":"red"},{"text":"'","color":"blue"},{"text":"(","color":"red"}]
execute if entity @s[scores={jeer=2}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":":","color":"dark_aqua"},{"text":" 我知道我会做出正确的选择.","color":"red"}]
execute if entity @s[scores={jeer=3}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":":","color":"dark_aqua"},{"text":" 吉恩","color":"aqua"},{"text":"会感到失望.","color":"dark_red"}]
execute if entity @s[scores={jeer=4}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":":","color":"dark_aqua"},{"text":" 你为什么要那样做?","color":"red"}]
execute if entity @s[scores={jeer=5}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":":","color":"dark_aqua"},{"text":" 请做个好人, 失败吧! :)","color":"red"}]
execute if entity @s[scores={jeer=6}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":":","color":"dark_aqua"},{"text":" 真冷酷 . . . ","color":"red"},{"text":"☃","color":"white"},{"text":"☃","color":"aqua"},{"text":"☃","color":"white"}]
execute if entity @s[scores={jeer=7}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":":","color":"dark_aqua"},{"text":" ☠","color":"dark_red"}]
execute if entity @s[scores={jeer=8}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":":","color":"dark_aqua"},{"text":" 真好.","color":"dark_red"}]



playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1.15
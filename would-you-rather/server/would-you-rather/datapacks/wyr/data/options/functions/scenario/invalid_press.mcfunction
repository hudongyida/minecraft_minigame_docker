playsound minecraft:block.note_block.didgeridoo master @a -928 62 -132 1 0
execute positioned -928 62 -132 run tellraw @a[distance=..5] [{"text":"你不能在游戏中改变场景!","color":"red"}]
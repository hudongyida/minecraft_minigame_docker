# ブロックidを取得
#アイテムディスプレイを召喚
summon item_display ~ ~ ~ {Tags:["get_block_data"],width:0,height:0}
#ディスプレイにアイテム格納
loot replace entity @e[type=item_display,tag=get_block_data,sort=nearest,limit=1] container.0 mine ~ ~-0.0001 ~ minecraft:debug_stick{Enchantments:[{lvl:1s,id:"silk_touch"}]}
#ブロックidをストレージに保存
data modify storage macro: block_data.block set from entity @e[type=item_display,tag=get_block_data,sort=nearest,limit=1] item.id
#アイテムディスプレイをキル
kill @e[type=item_display,sort=nearest,limit=1]

# propertiesを検知
#age
execute if block ~ ~ ~ #minecraft:all_blocks[age=0] run data modify storage macro: block_data.age set value "0"
execute if block ~ ~ ~ #minecraft:all_blocks[age=1] run data modify storage macro: block_data.age set value "1"
execute if block ~ ~ ~ #minecraft:all_blocks[age=2] run data modify storage macro: block_data.age set value "2"
execute if block ~ ~ ~ #minecraft:all_blocks[age=3] run data modify storage macro: block_data.age set value "3"
execute if block ~ ~ ~ #minecraft:all_blocks[age=4] run data modify storage macro: block_data.age set value "4"
execute if block ~ ~ ~ #minecraft:all_blocks[age=5] run data modify storage macro: block_data.age set value "5"
execute if block ~ ~ ~ #minecraft:all_blocks[age=6] run data modify storage macro: block_data.age set value "6"
execute if block ~ ~ ~ #minecraft:all_blocks[age=7] run data modify storage macro: block_data.age set value "7"
execute if block ~ ~ ~ #minecraft:all_blocks[age=8] run data modify storage macro: block_data.age set value "8"
execute if block ~ ~ ~ #minecraft:all_blocks[age=9] run data modify storage macro: block_data.age set value "9"
execute if block ~ ~ ~ #minecraft:all_blocks[age=10] run data modify storage macro: block_data.age set value "10"
execute if block ~ ~ ~ #minecraft:all_blocks[age=11] run data modify storage macro: block_data.age set value "11"
execute if block ~ ~ ~ #minecraft:all_blocks[age=12] run data modify storage macro: block_data.age set value "12"
execute if block ~ ~ ~ #minecraft:all_blocks[age=13] run data modify storage macro: block_data.age set value "13"
execute if block ~ ~ ~ #minecraft:all_blocks[age=14] run data modify storage macro: block_data.age set value "14"
execute if block ~ ~ ~ #minecraft:all_blocks[age=15] run data modify storage macro: block_data.age set value "15"
execute if block ~ ~ ~ #minecraft:all_blocks[age=16] run data modify storage macro: block_data.age set value "16"
execute if block ~ ~ ~ #minecraft:all_blocks[age=17] run data modify storage macro: block_data.age set value "17"
execute if block ~ ~ ~ #minecraft:all_blocks[age=18] run data modify storage macro: block_data.age set value "18"
execute if block ~ ~ ~ #minecraft:all_blocks[age=19] run data modify storage macro: block_data.age set value "19"
execute if block ~ ~ ~ #minecraft:all_blocks[age=20] run data modify storage macro: block_data.age set value "20"
execute if block ~ ~ ~ #minecraft:all_blocks[age=21] run data modify storage macro: block_data.age set value "21"
execute if block ~ ~ ~ #minecraft:all_blocks[age=22] run data modify storage macro: block_data.age set value "22"
execute if block ~ ~ ~ #minecraft:all_blocks[age=23] run data modify storage macro: block_data.age set value "23"
execute if block ~ ~ ~ #minecraft:all_blocks[age=24] run data modify storage macro: block_data.age set value "24"
#attached
execute if block ~ ~ ~ #minecraft:all_blocks[attached=true] run data modify storage macro: block_data.attached set value "true"
execute if block ~ ~ ~ #minecraft:all_blocks[attached=false] run data modify storage macro: block_data.attached set value "false"
#attachment
execute if block ~ ~ ~ #minecraft:all_blocks[attachment=ceiling] run data modify storage macro: block_data.attachment set value "ceiling"
execute if block ~ ~ ~ #minecraft:all_blocks[attachment=double_wall] run data modify storage macro: block_data.attachment set value "double_wall"
execute if block ~ ~ ~ #minecraft:all_blocks[attachment=floor] run data modify storage macro: block_data.attachment set value "floor"
execute if block ~ ~ ~ #minecraft:all_blocks[attachment=single_wall] run data modify storage macro: block_data.attachment set value "single_wall"
#axis
execute if block ~ ~ ~ #minecraft:all_blocks[axis=x] run data modify storage macro: block_data.axis set value "x"
execute if block ~ ~ ~ #minecraft:all_blocks[axis=y] run data modify storage macro: block_data.axis set value "y"
execute if block ~ ~ ~ #minecraft:all_blocks[axis=z] run data modify storage macro: block_data.axis set value "z"
#berries
execute if block ~ ~ ~ #minecraft:all_blocks[berries=true] run data modify storage macro: block_data.berries set value "true"
execute if block ~ ~ ~ #minecraft:all_blocks[berries=false] run data modify storage macro: block_data.berries set value "false"
#bites
execute if block ~ ~ ~ #minecraft:all_blocks[bites=0] run data modify storage macro: block_data.bites set value "0"
execute if block ~ ~ ~ #minecraft:all_blocks[bites=1] run data modify storage macro: block_data.bites set value "1"
execute if block ~ ~ ~ #minecraft:all_blocks[bites=2] run data modify storage macro: block_data.bites set value "2"
execute if block ~ ~ ~ #minecraft:all_blocks[bites=3] run data modify storage macro: block_data.bites set value "3"
execute if block ~ ~ ~ #minecraft:all_blocks[bites=4] run data modify storage macro: block_data.bites set value "4"
execute if block ~ ~ ~ #minecraft:all_blocks[bites=5] run data modify storage macro: block_data.bites set value "5"
execute if block ~ ~ ~ #minecraft:all_blocks[bites=6] run data modify storage macro: block_data.bites set value "6"
#bottom
execute if block ~ ~ ~ #minecraft:all_blocks[bottom=true] run data modify storage macro: block_data.bottom set value "true"
execute if block ~ ~ ~ #minecraft:all_blocks[bottom=false] run data modify storage macro: block_data.bottom set value "false"
#candles
execute if block ~ ~ ~ #minecraft:all_blocks[candles=1] run data modify storage macro: block_data.candles set value "1"
execute if block ~ ~ ~ #minecraft:all_blocks[candles=2] run data modify storage macro: block_data.candles set value "2"
execute if block ~ ~ ~ #minecraft:all_blocks[candles=3] run data modify storage macro: block_data.candles set value "3"
execute if block ~ ~ ~ #minecraft:all_blocks[candles=4] run data modify storage macro: block_data.candles set value "4"
#charges
#execute if block ~ ~ ~ #minecraft:all_blocks[charges=0] run data modify storage macro: block_data.charges set value "0"
#execute if block ~ ~ ~ #minecraft:all_blocks[charges=1] run data modify storage macro: block_data.charges set value "1"
#execute if block ~ ~ ~ #minecraft:all_blocks[charges=2] run data modify storage macro: block_data.charges set value "2"
#execute if block ~ ~ ~ #minecraft:all_blocks[charges=3] run data modify storage macro: block_data.charges set value "3"
#execute if block ~ ~ ~ #minecraft:all_blocks[charges=4] run data modify storage macro: block_data.charges set value "4"
#conditional
#execute if block ~ ~ ~ #minecraft:all_blocks[conditional=true] run data modify storage macro: block_data.conditional set value "true"
#execute if block ~ ~ ~ #minecraft:all_blocks[conditional=false] run data modify storage macro: block_data.conditional set value "false"
#delay
execute if block ~ ~ ~ #minecraft:all_blocks[delay=1] run data modify storage macro: block_data.delay set value "1"
execute if block ~ ~ ~ #minecraft:all_blocks[delay=2] run data modify storage macro: block_data.delay set value "2"
execute if block ~ ~ ~ #minecraft:all_blocks[delay=3] run data modify storage macro: block_data.delay set value "3"
execute if block ~ ~ ~ #minecraft:all_blocks[delay=4] run data modify storage macro: block_data.delay set value "4"
#disarmed
execute if block ~ ~ ~ #minecraft:all_blocks[disarmed=true] run data modify storage macro: block_data.disarmed set value "true"
execute if block ~ ~ ~ #minecraft:all_blocks[disarmed=false] run data modify storage macro: block_data.disarmed set value "false"
#dusted
execute if block ~ ~ ~ #minecraft:all_blocks[dusted=0] run data modify storage macro: block_data.dusted set value "0"
execute if block ~ ~ ~ #minecraft:all_blocks[dusted=1] run data modify storage macro: block_data.dusted set value "1"
execute if block ~ ~ ~ #minecraft:all_blocks[dusted=2] run data modify storage macro: block_data.dusted set value "2"
execute if block ~ ~ ~ #minecraft:all_blocks[dusted=3] run data modify storage macro: block_data.dusted set value "3"
#distance
#execute if block ~ ~ ~ #minecraft:all_blocks[distance=0] run data modify storage macro: block_data.distance set value "0"
#execute if block ~ ~ ~ #minecraft:all_blocks[distance=1] run data modify storage macro: block_data.distance set value "1"
#execute if block ~ ~ ~ #minecraft:all_blocks[distance=2] run data modify storage macro: block_data.distance set value "2"
#execute if block ~ ~ ~ #minecraft:all_blocks[distance=3] run data modify storage macro: block_data.distance set value "3"
#execute if block ~ ~ ~ #minecraft:all_blocks[distance=4] run data modify storage macro: block_data.distance set value "4"
#execute if block ~ ~ ~ #minecraft:all_blocks[distance=5] run data modify storage macro: block_data.distance set value "5"
#execute if block ~ ~ ~ #minecraft:all_blocks[distance=6] run data modify storage macro: block_data.distance set value "6"
#execute if block ~ ~ ~ #minecraft:all_blocks[distance=7] run data modify storage macro: block_data.distance set value "7"
#drag
#execute if block ~ ~ ~ #minecraft:all_blocks[drag=true] run data modify storage macro: block_data.drag set value "true"
#execute if block ~ ~ ~ #minecraft:all_blocks[drag=false] run data modify storage macro: block_data.drag set value "false"
#eggs
execute if block ~ ~ ~ #minecraft:all_blocks[eggs=1] run data modify storage macro: block_data.eggs set value "1"
execute if block ~ ~ ~ #minecraft:all_blocks[eggs=2] run data modify storage macro: block_data.eggs set value "2"
execute if block ~ ~ ~ #minecraft:all_blocks[eggs=3] run data modify storage macro: block_data.eggs set value "3"
execute if block ~ ~ ~ #minecraft:all_blocks[eggs=4] run data modify storage macro: block_data.eggs set value "4"
#enabled
#execute if block ~ ~ ~ #minecraft:all_blocks[enabled=true] run data modify storage macro: block_data.enabled set value "true"
#execute if block ~ ~ ~ #minecraft:all_blocks[enabled=false] run data modify storage macro: block_data.enabled set value "false"
#extended
execute if block ~ ~ ~ #minecraft:all_blocks[extended=true] run data modify storage macro: block_data.extended set value "true"
execute if block ~ ~ ~ #minecraft:all_blocks[extended=false] run data modify storage macro: block_data.extended set value "false"
#eye
execute if block ~ ~ ~ #minecraft:all_blocks[eye=true] run data modify storage macro: block_data.eye set value "true"
execute if block ~ ~ ~ #minecraft:all_blocks[eye=false] run data modify storage macro: block_data.eye set value "false"
#face
execute if block ~ ~ ~ #minecraft:all_blocks[face=floor] run data modify storage macro: block_data.face set value "floor"
execute if block ~ ~ ~ #minecraft:all_blocks[face=ceiling] run data modify storage macro: block_data.face set value "ceiling"
execute if block ~ ~ ~ #minecraft:all_blocks[face=wall] run data modify storage macro: block_data.face set value "wall"
#facing
execute if block ~ ~ ~ #minecraft:all_blocks[facing=up] run data modify storage macro: block_data.facing set value "up"
execute if block ~ ~ ~ #minecraft:all_blocks[facing=down] run data modify storage macro: block_data.facing set value "down"
execute if block ~ ~ ~ #minecraft:all_blocks[facing=north] run data modify storage macro: block_data.facing set value "north"
execute if block ~ ~ ~ #minecraft:all_blocks[facing=south] run data modify storage macro: block_data.facing set value "south"
execute if block ~ ~ ~ #minecraft:all_blocks[facing=east] run data modify storage macro: block_data.facing set value "east"
execute if block ~ ~ ~ #minecraft:all_blocks[facing=west] run data modify storage macro: block_data.facing set value "west"
#half
execute if block ~ ~ ~ #minecraft:all_blocks[half=top] run data modify storage macro: block_data.half set value "top"
execute if block ~ ~ ~ #minecraft:all_blocks[half=bottom] run data modify storage macro: block_data.half set value "bottom"
execute if block ~ ~ ~ #minecraft:all_blocks[half=lower] run data modify storage macro: block_data.half set value "lower"
execute if block ~ ~ ~ #minecraft:all_blocks[half=upper] run data modify storage macro: block_data.half set value "upper"
#hanging
execute if block ~ ~ ~ #minecraft:all_blocks[hanging=true] run data modify storage macro: block_data.hanging set value "true"
execute if block ~ ~ ~ #minecraft:all_blocks[hanging=false] run data modify storage macro: block_data.hanging set value "false"
#has_book
#execute if block ~ ~ ~ #minecraft:all_blocks[has_book=true] run data modify storage macro: block_data.has_book set value "true"
#execute if block ~ ~ ~ #minecraft:all_blocks[has_book=false] run data modify storage macro: block_data.has_book set value "false"
#has_bottle_0
execute if block ~ ~ ~ #minecraft:all_blocks[has_bottle_0=true] run data modify storage macro: block_data.has_bottle_0 set value "true"
execute if block ~ ~ ~ #minecraft:all_blocks[has_bottle_0=false] run data modify storage macro: block_data.has_bottle_0 set value "false"
#has_bottle_1
execute if block ~ ~ ~ #minecraft:all_blocks[has_bottle_1=true] run data modify storage macro: block_data.has_bottle_1 set value "true"
execute if block ~ ~ ~ #minecraft:all_blocks[has_bottle_1=false] run data modify storage macro: block_data.has_bottle_1 set value "false"
#has_bottle_2
execute if block ~ ~ ~ #minecraft:all_blocks[has_bottle_2=true] run data modify storage macro: block_data.has_bottle_2 set value "true"
execute if block ~ ~ ~ #minecraft:all_blocks[has_bottle_2=false] run data modify storage macro: block_data.has_bottle_2 set value "false"
#has_record
#execute if block ~ ~ ~ #minecraft:all_blocks[has_record=true] run data modify storage macro: block_data.has_record set value "true"
#execute if block ~ ~ ~ #minecraft:all_blocks[has_record=false] run data modify storage macro: block_data.has_record set value "false"
#hatch
#execute if block ~ ~ ~ #minecraft:all_blocks[hatch=0] run data modify storage macro: block_data.hatch set value "0"
#execute if block ~ ~ ~ #minecraft:all_blocks[hatch=1] run data modify storage macro: block_data.hatch set value "1"
#execute if block ~ ~ ~ #minecraft:all_blocks[hatch=2] run data modify storage macro: block_data.hatch set value "2"
#hinge
execute if block ~ ~ ~ #minecraft:all_blocks[hinge=left] run data modify storage macro: block_data.hinge set value "left"
execute if block ~ ~ ~ #minecraft:all_blocks[hinge=right] run data modify storage macro: block_data.hinge set value "right"
#instrument
#execute if block ~ ~ ~ #minecraft:all_blocks[instrument=banjo] run data modify storage macro: block_data.instrument set value "banjo"
#execute if block ~ ~ ~ #minecraft:all_blocks[instrument=basedrum] run data modify storage macro: block_data.instrument set value "basedrum"
#execute if block ~ ~ ~ #minecraft:all_blocks[instrument=bass] run data modify storage macro: block_data.instrument set value "bass"
#execute if block ~ ~ ~ #minecraft:all_blocks[instrument=bell] run data modify storage macro: block_data.instrument set value "bell"
#execute if block ~ ~ ~ #minecraft:all_blocks[instrument=bit] run data modify storage macro: block_data.instrument set value "bit"
#execute if block ~ ~ ~ #minecraft:all_blocks[instrument=chime] run data modify storage macro: block_data.instrument set value "chime"
#execute if block ~ ~ ~ #minecraft:all_blocks[instrument=cow_bell] run data modify storage macro: block_data.instrument set value "cow_bell"
#execute if block ~ ~ ~ #minecraft:all_blocks[instrument=creeper] run data modify storage macro: block_data.instrument set value "creeper"
#execute if block ~ ~ ~ #minecraft:all_blocks[instrument=custom_head] run data modify storage macro: block_data.instrument set value "custom_head"
#execute if block ~ ~ ~ #minecraft:all_blocks[instrument=didgeridoo] run data modify storage macro: block_data.instrument set value "didgeridoo"
#execute if block ~ ~ ~ #minecraft:all_blocks[instrument=dragon] run data modify storage macro: block_data.instrument set value "dragon"
#execute if block ~ ~ ~ #minecraft:all_blocks[instrument=flute] run data modify storage macro: block_data.instrument set value "flute"
#execute if block ~ ~ ~ #minecraft:all_blocks[instrument=guitar] run data modify storage macro: block_data.instrument set value "guitar"
#execute if block ~ ~ ~ #minecraft:all_blocks[instrument=harp] run data modify storage macro: block_data.instrument set value "harp"
#execute if block ~ ~ ~ #minecraft:all_blocks[instrument=hat] run data modify storage macro: block_data.instrument set value "hat"
#execute if block ~ ~ ~ #minecraft:all_blocks[instrument=iron_xylophone] run data modify storage macro: block_data.instrument set value "iron_xylophone"
#execute if block ~ ~ ~ #minecraft:all_blocks[instrument=piglin] run data modify storage macro: block_data.instrument set value "piglin"
#execute if block ~ ~ ~ #minecraft:all_blocks[instrument=pling] run data modify storage macro: block_data.instrument set value "pling"
#execute if block ~ ~ ~ #minecraft:all_blocks[instrument=skeleton] run data modify storage macro: block_data.instrument set value "skeleton"
#execute if block ~ ~ ~ #minecraft:all_blocks[instrument=snare] run data modify storage macro: block_data.instrument set value "snare"
#execute if block ~ ~ ~ #minecraft:all_blocks[instrument=wither_skeleton] run data modify storage macro: block_data.instrument set value "wither_skeleton"
#execute if block ~ ~ ~ #minecraft:all_blocks[instrument=xylophone] run data modify storage macro: block_data.instrument set value "xylophone"
#execute if block ~ ~ ~ #minecraft:all_blocks[instrument=zombie] run data modify storage macro: block_data.instrument set value "zombie"
#inverted
#execute if block ~ ~ ~ #minecraft:all_blocks[inverted=true] run data modify storage macro: block_data.inverted set value "true"
#execute if block ~ ~ ~ #minecraft:all_blocks[inverted=false] run data modify storage macro: block_data.inverted set value "false"
#in_wall
#execute if block ~ ~ ~ #minecraft:all_blocks[in_wall=true] run data modify storage macro: block_data.in_wall set value "true"
#execute if block ~ ~ ~ #minecraft:all_blocks[in_wall=false] run data modify storage macro: block_data.in_wall set value "false"
#layers
execute if block ~ ~ ~ #minecraft:all_blocks[layers=0] run data modify storage macro: block_data.layers set value "0"
execute if block ~ ~ ~ #minecraft:all_blocks[layers=1] run data modify storage macro: block_data.layers set value "1"
execute if block ~ ~ ~ #minecraft:all_blocks[layers=2] run data modify storage macro: block_data.layers set value "2"
execute if block ~ ~ ~ #minecraft:all_blocks[layers=3] run data modify storage macro: block_data.layers set value "3"
execute if block ~ ~ ~ #minecraft:all_blocks[layers=4] run data modify storage macro: block_data.layers set value "4"
execute if block ~ ~ ~ #minecraft:all_blocks[layers=5] run data modify storage macro: block_data.layers set value "5"
execute if block ~ ~ ~ #minecraft:all_blocks[layers=6] run data modify storage macro: block_data.layers set value "6"
execute if block ~ ~ ~ #minecraft:all_blocks[layers=7] run data modify storage macro: block_data.layers set value "7"
execute if block ~ ~ ~ #minecraft:all_blocks[layers=8] run data modify storage macro: block_data.layers set value "8"
#leaves
execute if block ~ ~ ~ #minecraft:all_blocks[leaves=large] run data modify storage macro: block_data.leaves set value "large"
execute if block ~ ~ ~ #minecraft:all_blocks[leaves=none] run data modify storage macro: block_data.leaves set value "none"
execute if block ~ ~ ~ #minecraft:all_blocks[leaves=small] run data modify storage macro: block_data.leaves set value "small"
#level
execute if block ~ ~ ~ #minecraft:all_blocks[level=0] run data modify storage macro: block_data.level set value "0"
execute if block ~ ~ ~ #minecraft:all_blocks[level=1] run data modify storage macro: block_data.level set value "1"
execute if block ~ ~ ~ #minecraft:all_blocks[level=2] run data modify storage macro: block_data.level set value "2"
execute if block ~ ~ ~ #minecraft:all_blocks[level=3] run data modify storage macro: block_data.level set value "3"
execute if block ~ ~ ~ #minecraft:all_blocks[level=4] run data modify storage macro: block_data.level set value "4"
execute if block ~ ~ ~ #minecraft:all_blocks[level=5] run data modify storage macro: block_data.level set value "5"
execute if block ~ ~ ~ #minecraft:all_blocks[level=6] run data modify storage macro: block_data.level set value "6"
execute if block ~ ~ ~ #minecraft:all_blocks[level=7] run data modify storage macro: block_data.level set value "7"
execute if block ~ ~ ~ #minecraft:all_blocks[level=8] run data modify storage macro: block_data.level set value "8"
execute if block ~ ~ ~ #minecraft:all_blocks[level=9] run data modify storage macro: block_data.level set value "9"
execute if block ~ ~ ~ #minecraft:all_blocks[level=10] run data modify storage macro: block_data.level set value "10"
execute if block ~ ~ ~ #minecraft:all_blocks[level=11] run data modify storage macro: block_data.level set value "11"
execute if block ~ ~ ~ #minecraft:all_blocks[level=12] run data modify storage macro: block_data.level set value "12"
execute if block ~ ~ ~ #minecraft:all_blocks[level=13] run data modify storage macro: block_data.level set value "13"
execute if block ~ ~ ~ #minecraft:all_blocks[level=14] run data modify storage macro: block_data.level set value "14"
execute if block ~ ~ ~ #minecraft:all_blocks[level=15] run data modify storage macro: block_data.level set value "15"
#lit
execute if block ~ ~ ~ #minecraft:all_blocks[lit=true] run data modify storage macro: block_data.lit set value "true"
execute if block ~ ~ ~ #minecraft:all_blocks[lit=false] run data modify storage macro: block_data.lit set value "false"
#locked
execute if block ~ ~ ~ #minecraft:all_blocks[locked=true] run data modify storage macro: block_data.locked set value "true"
execute if block ~ ~ ~ #minecraft:all_blocks[locked=false] run data modify storage macro: block_data.locked set value "false"
#mode
execute if block ~ ~ ~ #minecraft:all_blocks[mode=corner] run data modify storage macro: block_data.mode set value "corner"
execute if block ~ ~ ~ #minecraft:all_blocks[mode=data] run data modify storage macro: block_data.mode set value "data"
execute if block ~ ~ ~ #minecraft:all_blocks[mode=load] run data modify storage macro: block_data.mode set value "load"
execute if block ~ ~ ~ #minecraft:all_blocks[mode=save] run data modify storage macro: block_data.mode set value "save"
execute if block ~ ~ ~ #minecraft:all_blocks[mode=compare] run data modify storage macro: block_data.mode set value "compare"
execute if block ~ ~ ~ #minecraft:all_blocks[mode=subtract] run data modify storage macro: block_data.mode set value "subtract"
#moisture
execute if block ~ ~ ~ #minecraft:all_blocks[moisture=0] run data modify storage macro: block_data.moisture set value "0"
execute if block ~ ~ ~ #minecraft:all_blocks[moisture=1] run data modify storage macro: block_data.moisture set value "1"
execute if block ~ ~ ~ #minecraft:all_blocks[moisture=2] run data modify storage macro: block_data.moisture set value "2"
execute if block ~ ~ ~ #minecraft:all_blocks[moisture=3] run data modify storage macro: block_data.moisture set value "3"
execute if block ~ ~ ~ #minecraft:all_blocks[moisture=4] run data modify storage macro: block_data.moisture set value "4"
execute if block ~ ~ ~ #minecraft:all_blocks[moisture=5] run data modify storage macro: block_data.moisture set value "5"
execute if block ~ ~ ~ #minecraft:all_blocks[moisture=6] run data modify storage macro: block_data.moisture set value "6"
execute if block ~ ~ ~ #minecraft:all_blocks[moisture=7] run data modify storage macro: block_data.moisture set value "7"
#note
#execute if block ~ ~ ~ #minecraft:all_blocks[note=0] run data modify storage macro: block_data.note set value "0"
#execute if block ~ ~ ~ #minecraft:all_blocks[note=1] run data modify storage macro: block_data.note set value "1"
#execute if block ~ ~ ~ #minecraft:all_blocks[note=2] run data modify storage macro: block_data.note set value "2"
#execute if block ~ ~ ~ #minecraft:all_blocks[note=3] run data modify storage macro: block_data.note set value "3"
#execute if block ~ ~ ~ #minecraft:all_blocks[note=4] run data modify storage macro: block_data.note set value "4"
#execute if block ~ ~ ~ #minecraft:all_blocks[note=5] run data modify storage macro: block_data.note set value "5"
#execute if block ~ ~ ~ #minecraft:all_blocks[note=6] run data modify storage macro: block_data.note set value "6"
#execute if block ~ ~ ~ #minecraft:all_blocks[note=7] run data modify storage macro: block_data.note set value "7"
#execute if block ~ ~ ~ #minecraft:all_blocks[note=8] run data modify storage macro: block_data.note set value "8"
#execute if block ~ ~ ~ #minecraft:all_blocks[note=9] run data modify storage macro: block_data.note set value "9"
#execute if block ~ ~ ~ #minecraft:all_blocks[note=10] run data modify storage macro: block_data.note set value "10"
#execute if block ~ ~ ~ #minecraft:all_blocks[note=11] run data modify storage macro: block_data.note set value "11"
#execute if block ~ ~ ~ #minecraft:all_blocks[note=12] run data modify storage macro: block_data.note set value "12"
#execute if block ~ ~ ~ #minecraft:all_blocks[note=13] run data modify storage macro: block_data.note set value "13"
#execute if block ~ ~ ~ #minecraft:all_blocks[note=14] run data modify storage macro: block_data.note set value "14"
#execute if block ~ ~ ~ #minecraft:all_blocks[note=15] run data modify storage macro: block_data.note set value "15"
#execute if block ~ ~ ~ #minecraft:all_blocks[note=16] run data modify storage macro: block_data.note set value "16"
#execute if block ~ ~ ~ #minecraft:all_blocks[note=17] run data modify storage macro: block_data.note set value "17"
#execute if block ~ ~ ~ #minecraft:all_blocks[note=18] run data modify storage macro: block_data.note set value "18"
#execute if block ~ ~ ~ #minecraft:all_blocks[note=19] run data modify storage macro: block_data.note set value "19"
#execute if block ~ ~ ~ #minecraft:all_blocks[note=20] run data modify storage macro: block_data.note set value "20"
#execute if block ~ ~ ~ #minecraft:all_blocks[note=21] run data modify storage macro: block_data.note set value "21"
#execute if block ~ ~ ~ #minecraft:all_blocks[note=22] run data modify storage macro: block_data.note set value "22"
#execute if block ~ ~ ~ #minecraft:all_blocks[note=23] run data modify storage macro: block_data.note set value "23"
#execute if block ~ ~ ~ #minecraft:all_blocks[note=24] run data modify storage macro: block_data.note set value "24"
#occupied
execute if block ~ ~ ~ #minecraft:all_blocks[occupied=true] run data modify storage macro: block_data.occupied set value "true"
execute if block ~ ~ ~ #minecraft:all_blocks[occupied=false] run data modify storage macro: block_data.occupied set value "false"
#open
execute if block ~ ~ ~ #minecraft:all_blocks[open=true] run data modify storage macro: block_data.open set value "true"
execute if block ~ ~ ~ #minecraft:all_blocks[open=false] run data modify storage macro: block_data.open set value "false"
#orientation
#execute if block ~ ~ ~ #minecraft:all_blocks[orientation=down_east] run data modify storage macro: block_data.orientation set value "down_east"
#execute if block ~ ~ ~ #minecraft:all_blocks[orientation=down_north] run data modify storage macro: block_data.orientation set value "down_north"
#execute if block ~ ~ ~ #minecraft:all_blocks[orientation=down_south] run data modify storage macro: block_data.orientation set value "down_south"
#execute if block ~ ~ ~ #minecraft:all_blocks[orientation=down_west] run data modify storage macro: block_data.orientation set value "down_west"
#execute if block ~ ~ ~ #minecraft:all_blocks[orientation=east_up] run data modify storage macro: block_data.orientation set value "east_up"
#execute if block ~ ~ ~ #minecraft:all_blocks[orientation=north_up] run data modify storage macro: block_data.orientation set value "north_up"
#execute if block ~ ~ ~ #minecraft:all_blocks[orientation=south_up] run data modify storage macro: block_data.orientation set value "south_up"
#execute if block ~ ~ ~ #minecraft:all_blocks[orientation=up_east] run data modify storage macro: block_data.orientation set value "up_east"
#execute if block ~ ~ ~ #minecraft:all_blocks[orientation=up_north] run data modify storage macro: block_data.orientation set value "up_north"
#execute if block ~ ~ ~ #minecraft:all_blocks[orientation=up_south] run data modify storage macro: block_data.orientation set value "up_south"
#execute if block ~ ~ ~ #minecraft:all_blocks[orientation=up_west] run data modify storage macro: block_data.orientation set value "up_west"
#execute if block ~ ~ ~ #minecraft:all_blocks[orientation=west_up] run data modify storage macro: block_data.orientation set value "west_up"
#part
#execute if block ~ ~ ~ #minecraft:all_blocks[part=true] run data modify storage macro: block_data.part set value "true"
#execute if block ~ ~ ~ #minecraft:all_blocks[part=false] run data modify storage macro: block_data.part set value "false"
#persistent
execute if block ~ ~ ~ #minecraft:all_blocks[persistent=true] run data modify storage macro: block_data.persistent set value "true"
execute if block ~ ~ ~ #minecraft:all_blocks[persistent=false] run data modify storage macro: block_data.persistent set value "false"
#power
#execute if block ~ ~ ~ #minecraft:all_blocks[power=0] run data modify storage macro: block_data.power set value "0"
#execute if block ~ ~ ~ #minecraft:all_blocks[power=1] run data modify storage macro: block_data.power set value "1"
#execute if block ~ ~ ~ #minecraft:all_blocks[power=2] run data modify storage macro: block_data.power set value "2"
#execute if block ~ ~ ~ #minecraft:all_blocks[power=3] run data modify storage macro: block_data.power set value "3"
#execute if block ~ ~ ~ #minecraft:all_blocks[power=4] run data modify storage macro: block_data.power set value "4"
#execute if block ~ ~ ~ #minecraft:all_blocks[power=5] run data modify storage macro: block_data.power set value "5"
#execute if block ~ ~ ~ #minecraft:all_blocks[power=6] run data modify storage macro: block_data.power set value "6"
#execute if block ~ ~ ~ #minecraft:all_blocks[power=7] run data modify storage macro: block_data.power set value "7"
#execute if block ~ ~ ~ #minecraft:all_blocks[power=8] run data modify storage macro: block_data.power set value "8"
#execute if block ~ ~ ~ #minecraft:all_blocks[power=9] run data modify storage macro: block_data.power set value "9"
#execute if block ~ ~ ~ #minecraft:all_blocks[power=10] run data modify storage macro: block_data.power set value "10"
#execute if block ~ ~ ~ #minecraft:all_blocks[power=11] run data modify storage macro: block_data.power set value "11"
#execute if block ~ ~ ~ #minecraft:all_blocks[power=12] run data modify storage macro: block_data.power set value "12"
#execute if block ~ ~ ~ #minecraft:all_blocks[power=13] run data modify storage macro: block_data.power set value "13"
#execute if block ~ ~ ~ #minecraft:all_blocks[power=14] run data modify storage macro: block_data.power set value "14"
#execute if block ~ ~ ~ #minecraft:all_blocks[power=15] run data modify storage macro: block_data.power set value "15"
#pickles
execute if block ~ ~ ~ #minecraft:all_blocks[pickles=1] run data modify storage macro: block_data.pickles set value "1"
execute if block ~ ~ ~ #minecraft:all_blocks[pickles=2] run data modify storage macro: block_data.pickles set value "2"
execute if block ~ ~ ~ #minecraft:all_blocks[pickles=3] run data modify storage macro: block_data.pickles set value "3"
execute if block ~ ~ ~ #minecraft:all_blocks[pickles=4] run data modify storage macro: block_data.pickles set value "4"
#powered
execute if block ~ ~ ~ #minecraft:all_blocks[powered=true] run data modify storage macro: block_data.powered set value "true"
execute if block ~ ~ ~ #minecraft:all_blocks[powered=false] run data modify storage macro: block_data.powered set value "false"
#rotation
execute if block ~ ~ ~ #minecraft:all_blocks[rotation=0] run data modify storage macro: block_data.rotation set value "0"
execute if block ~ ~ ~ #minecraft:all_blocks[rotation=1] run data modify storage macro: block_data.rotation set value "1"
execute if block ~ ~ ~ #minecraft:all_blocks[rotation=2] run data modify storage macro: block_data.rotation set value "2"
execute if block ~ ~ ~ #minecraft:all_blocks[rotation=3] run data modify storage macro: block_data.rotation set value "3"
execute if block ~ ~ ~ #minecraft:all_blocks[rotation=4] run data modify storage macro: block_data.rotation set value "4"
execute if block ~ ~ ~ #minecraft:all_blocks[rotation=5] run data modify storage macro: block_data.rotation set value "5"
execute if block ~ ~ ~ #minecraft:all_blocks[rotation=6] run data modify storage macro: block_data.rotation set value "6"
execute if block ~ ~ ~ #minecraft:all_blocks[rotation=7] run data modify storage macro: block_data.rotation set value "7"
execute if block ~ ~ ~ #minecraft:all_blocks[rotation=8] run data modify storage macro: block_data.rotation set value "8"
execute if block ~ ~ ~ #minecraft:all_blocks[rotation=9] run data modify storage macro: block_data.rotation set value "9"
execute if block ~ ~ ~ #minecraft:all_blocks[rotation=10] run data modify storage macro: block_data.rotation set value "10"
execute if block ~ ~ ~ #minecraft:all_blocks[rotation=11] run data modify storage macro: block_data.rotation set value "11"
execute if block ~ ~ ~ #minecraft:all_blocks[rotation=12] run data modify storage macro: block_data.rotation set value "12"
execute if block ~ ~ ~ #minecraft:all_blocks[rotation=13] run data modify storage macro: block_data.rotation set value "13"
execute if block ~ ~ ~ #minecraft:all_blocks[rotation=14] run data modify storage macro: block_data.rotation set value "14"
execute if block ~ ~ ~ #minecraft:all_blocks[rotation=15] run data modify storage macro: block_data.rotation set value "15"
#signal_fire
execute if block ~ ~ ~ #minecraft:all_blocks[signal_fire=true] run data modify storage macro: block_data.signal_fire set value "true"
execute if block ~ ~ ~ #minecraft:all_blocks[signal_fire=false] run data modify storage macro: block_data.signal_fire set value "false"
#shape
execute if block ~ ~ ~ #minecraft:all_blocks[shape=straight] run data modify storage macro: block_data.shape set value "straight"
execute if block ~ ~ ~ #minecraft:all_blocks[shape=inner_left] run data modify storage macro: block_data.shape set value "inner_left"
execute if block ~ ~ ~ #minecraft:all_blocks[shape=inner_right] run data modify storage macro: block_data.shape set value "inner_right"
execute if block ~ ~ ~ #minecraft:all_blocks[shape=outer_left] run data modify storage macro: block_data.shape set value "outer_left"
execute if block ~ ~ ~ #minecraft:all_blocks[shape=outer_right] run data modify storage macro: block_data.shape set value "outer_right"
execute if block ~ ~ ~ #minecraft:all_blocks[shape=north_south] run data modify storage macro: block_data.shape set value "north_south"
execute if block ~ ~ ~ #minecraft:all_blocks[shape=east_west] run data modify storage macro: block_data.shape set value "east_west"
execute if block ~ ~ ~ #minecraft:all_blocks[shape=north_east] run data modify storage macro: block_data.shape set value "north_east"
execute if block ~ ~ ~ #minecraft:all_blocks[shape=north_west] run data modify storage macro: block_data.shape set value "north_west"
execute if block ~ ~ ~ #minecraft:all_blocks[shape=south_east] run data modify storage macro: block_data.shape set value "south_east"
execute if block ~ ~ ~ #minecraft:all_blocks[shape=south_west] run data modify storage macro: block_data.shape set value "south_west"
execute if block ~ ~ ~ #minecraft:all_blocks[shape=ascending_north] run data modify storage macro: block_data.shape set value "ascending_north"
execute if block ~ ~ ~ #minecraft:all_blocks[shape=ascending_south] run data modify storage macro: block_data.shape set value "ascending_south"
execute if block ~ ~ ~ #minecraft:all_blocks[shape=ascending_east] run data modify storage macro: block_data.shape set value "ascending_east"
execute if block ~ ~ ~ #minecraft:all_blocks[shape=ascending_west] run data modify storage macro: block_data.shape set value "ascending_west"
#short
#execute if block ~ ~ ~ #minecraft:all_blocks[short=true] run data modify storage macro: block_data.short set value "true"
#execute if block ~ ~ ~ #minecraft:all_blocks[short=false] run data modify storage macro: block_data.short set value "false"
#slot_0_occupied
execute if block ~ ~ ~ #minecraft:all_blocks[slot_0_occupied=true] run data modify storage macro: block_data.slot_0_occupied set value "true"
execute if block ~ ~ ~ #minecraft:all_blocks[slot_0_occupied=false] run data modify storage macro: block_data.slot_0_occupied set value "false"
#slot_0_occupied
execute if block ~ ~ ~ #minecraft:all_blocks[slot_1_occupied=true] run data modify storage macro: block_data.slot_1_occupied set value "true"
execute if block ~ ~ ~ #minecraft:all_blocks[slot_1_occupied=false] run data modify storage macro: block_data.slot_1_occupied set value "false"
#slot_0_occupied
execute if block ~ ~ ~ #minecraft:all_blocks[slot_2_occupied=true] run data modify storage macro: block_data.slot_2_occupied set value "true"
execute if block ~ ~ ~ #minecraft:all_blocks[slot_2_occupied=false] run data modify storage macro: block_data.slot_2_occupied set value "false"
#slot_0_occupied
execute if block ~ ~ ~ #minecraft:all_blocks[slot_3_occupied=true] run data modify storage macro: block_data.slot_3_occupied set value "true"
execute if block ~ ~ ~ #minecraft:all_blocks[slot_3_occupied=false] run data modify storage macro: block_data.slot_3_occupied set value "false"
#slot_0_occupied
execute if block ~ ~ ~ #minecraft:all_blocks[slot_4_occupied=true] run data modify storage macro: block_data.slot_4_occupied set value "true"
execute if block ~ ~ ~ #minecraft:all_blocks[slot_4_occupied=false] run data modify storage macro: block_data.slot_4_occupied set value "false"
#slot_0_occupied
execute if block ~ ~ ~ #minecraft:all_blocks[slot_5_occupied=true] run data modify storage macro: block_data.slot_5_occupied set value "true"
execute if block ~ ~ ~ #minecraft:all_blocks[slot_5_occupied=false] run data modify storage macro: block_data.slot_5_occupied set value "false"
#snowy
execute if block ~ ~ ~ #minecraft:all_blocks[snowy=true] run data modify storage macro: block_data.snowy set value "true"
execute if block ~ ~ ~ #minecraft:all_blocks[snowy=false] run data modify storage macro: block_data.snowy set value "false"
#stage
#execute if block ~ ~ ~ #minecraft:all_blocks[stage=0] run data modify storage macro: block_data.stage set value "0"
#execute if block ~ ~ ~ #minecraft:all_blocks[stage=1] run data modify storage macro: block_data.stage set value "1"
#execute if block ~ ~ ~ #minecraft:all_blocks[stage=2] run data modify storage macro: block_data.stage set value "2"
#tilt
execute if block ~ ~ ~ #minecraft:all_blocks[tilt=full] run data modify storage macro: block_data.tilt set value "full"
execute if block ~ ~ ~ #minecraft:all_blocks[tilt=none] run data modify storage macro: block_data.tilt set value "none"
execute if block ~ ~ ~ #minecraft:all_blocks[tilt=partial] run data modify storage macro: block_data.tilt set value "partial"
execute if block ~ ~ ~ #minecraft:all_blocks[tilt=unstable] run data modify storage macro: block_data.tilt set value "unstable"
#type
execute if block ~ ~ ~ #minecraft:all_blocks[type=top] run data modify storage macro: block_data.type set value "top"
execute if block ~ ~ ~ #minecraft:all_blocks[type=bottom] run data modify storage macro: block_data.type set value "bottom"
execute if block ~ ~ ~ #minecraft:all_blocks[type=double] run data modify storage macro: block_data.type set value "double"
execute if block ~ ~ ~ #minecraft:all_blocks[type=normal] run data modify storage macro: block_data.type set value "normal"
execute if block ~ ~ ~ #minecraft:all_blocks[type=sticky] run data modify storage macro: block_data.type set value "sticky"
#triggered
#execute if block ~ ~ ~ #minecraft:all_blocks[triggered=true] run data modify storage macro: block_data.triggered set value "true"
#execute if block ~ ~ ~ #minecraft:all_blocks[triggered=false] run data modify storage macro: block_data.triggered set value "false"
#unstable
#execute if block ~ ~ ~ #minecraft:all_blocks[unstable=true] run data modify storage macro: block_data.unstable set value "true"
#execute if block ~ ~ ~ #minecraft:all_blocks[unstable=false] run data modify storage macro: block_data.unstable set value "false"
#waterlogged
#execute if block ~ ~ ~ #minecraft:all_blocks[waterlogged=true] run data modify storage macro: block_data.waterlogged set value "true"
#execute if block ~ ~ ~ #minecraft:all_blocks[waterlogged=false] run data modify storage macro: block_data.waterlogged set value "false"
#down
execute if block ~ ~ ~ #minecraft:all_blocks[down=true] run data modify storage macro: block_data.down set value "true"
execute if block ~ ~ ~ #minecraft:all_blocks[down=false] run data modify storage macro: block_data.down set value "false"
#east
execute if block ~ ~ ~ #minecraft:all_blocks[east=true] run data modify storage macro: block_data.east set value "true"
execute if block ~ ~ ~ #minecraft:all_blocks[east=false] run data modify storage macro: block_data.east set value "false"
execute if block ~ ~ ~ #minecraft:all_blocks[east=none] run data modify storage macro: block_data.east set value "none"
execute if block ~ ~ ~ #minecraft:all_blocks[east=side] run data modify storage macro: block_data.east set value "side"
execute if block ~ ~ ~ #minecraft:all_blocks[east=up] run data modify storage macro: block_data.east set value "up"
#north
execute if block ~ ~ ~ #minecraft:all_blocks[north=true] run data modify storage macro: block_data.north set value "true"
execute if block ~ ~ ~ #minecraft:all_blocks[north=false] run data modify storage macro: block_data.north set value "false"
execute if block ~ ~ ~ #minecraft:all_blocks[north=none] run data modify storage macro: block_data.north set value "none"
execute if block ~ ~ ~ #minecraft:all_blocks[north=side] run data modify storage macro: block_data.north set value "side"
execute if block ~ ~ ~ #minecraft:all_blocks[north=up] run data modify storage macro: block_data.north set value "up"
#south
execute if block ~ ~ ~ #minecraft:all_blocks[south=true] run data modify storage macro: block_data.south set value "true"
execute if block ~ ~ ~ #minecraft:all_blocks[south=false] run data modify storage macro: block_data.south set value "false"
execute if block ~ ~ ~ #minecraft:all_blocks[south=none] run data modify storage macro: block_data.south set value "none"
execute if block ~ ~ ~ #minecraft:all_blocks[south=side] run data modify storage macro: block_data.south set value "side"
execute if block ~ ~ ~ #minecraft:all_blocks[south=up] run data modify storage macro: block_data.south set value "up"
#up
execute if block ~ ~ ~ #minecraft:all_blocks[up=true] run data modify storage macro: block_data.up set value "true"
execute if block ~ ~ ~ #minecraft:all_blocks[up=false] run data modify storage macro: block_data.up set value "false"
#west
execute if block ~ ~ ~ #minecraft:all_blocks[west=true] run data modify storage macro: block_data.west set value "true"
execute if block ~ ~ ~ #minecraft:all_blocks[west=false] run data modify storage macro: block_data.west set value "false"
execute if block ~ ~ ~ #minecraft:all_blocks[west=none] run data modify storage macro: block_data.west set value "none"
execute if block ~ ~ ~ #minecraft:all_blocks[west=side] run data modify storage macro: block_data.west set value "side"
execute if block ~ ~ ~ #minecraft:all_blocks[west=up] run data modify storage macro: block_data.west set value "up"



# 個別処理が必要なブロック
execute if block ~ ~ ~ #hide_and_seek:exception_blocks run function hide_and_seek:ability/hider/disguise/get_block_data/exception_blocks/



#Block_state情報を結合
function hide_and_seek:ability/hider/disguise/get_block_data/combine_block_state with storage macro: block_data

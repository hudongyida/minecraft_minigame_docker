#正常なデータに変換
$summon block_display ~ ~ ~ {width:0,height:0,Tags:["combine"],block_state:{Name:"$(block)",Properties:{age:"$(age)",attached:"$(attached)",attachment:"$(attachment)",axis:"$(axis)",berries:"$(berries)",bites:"$(bites)",bottom:"$(bottom)",candles:"$(candles)",delay:"$(delay)",disarmed:"$(disarmed)",dusted:"$(dusted)",eggs:"$(eggs)",extended:"$(extended)",eye:"$(eye)",face:"$(face)",facing:"$(facing)",half:"$(half)",hanging:"$(hanging)",has_bottle_0:"$(has_bottle_0)",has_bottle_1:"$(has_bottle_1)",has_bottle_2:"$(has_bottle_2)",hinge:"$(hinge)",layers:"$(layers)",leaves:"$(leaves)",level:"$(level)",lit:"$(lit)",locked:"$(locked)",mode:"$(mode)",moisture:"$(moisture)",open:"$(open)",pickles:"$(pickles)",power:"$(power)",powered:"$(powered)",rotation:"$(rotation)",signal_fire:"$(signal_fire)",shape:"$(shape)",slot_0_occupied:"$(slot_0_occupied)",slot_1_occupied:"$(slot_1_occupied)",slot_2_occupied:"$(slot_2_occupied)",slot_3_occupied:"$(slot_3_occupied)",slot_4_occupied:"$(slot_4_occupied)",slot_5_occupied:"$(slot_5_occupied)",snowy:"$(snowy)",snowy:"$(snowy)",tilt:"$(tilt)",type:"$(type)",down:"$(down)",east:"$(east)",north:"$(north)",south:"$(south)",up:"$(up)",west:"$(west)"}}}
#block_stateをstorageに保存
data modify storage macro: block_data.block_state set from entity @e[type=block_display,tag=combine,limit=1,sort=nearest] block_state
#変換用ブロックディスプレイをキル
kill @e[type=block_display,tag=combine,limit=1,sort=nearest]

#storageを初期化
data modify storage macro: block_data.block set value null
data modify storage macro: block_data.age set value null
data modify storage macro: block_data.attached set value null
data modify storage macro: block_data.attachment set value null
data modify storage macro: block_data.axis set value null
data modify storage macro: block_data.berries set value null
data modify storage macro: block_data.bites set value null
data modify storage macro: block_data.bottom set value null
data modify storage macro: block_data.candles set value null
#data modify storage macro: block_data.charges set value null
#data modify storage macro: block_data.conditional set value null
data modify storage macro: block_data.delay set value null
data modify storage macro: block_data.disarmed set value null
data modify storage macro: block_data.dusted set value null
#data modify storage macro: block_data.distance set value null
#data modify storage macro: block_data.drag set value null
data modify storage macro: block_data.eggs set value null
#data modify storage macro: block_data.enabled set value null
data modify storage macro: block_data.extended set value null
data modify storage macro: block_data.eye set value null
data modify storage macro: block_data.face set value null
data modify storage macro: block_data.facing set value null
data modify storage macro: block_data.half set value null
data modify storage macro: block_data.hanging set value null
#data modify storage macro: block_data.has_book set value null
data modify storage macro: block_data.has_bottle_0 set value null
data modify storage macro: block_data.has_bottle_1 set value null
data modify storage macro: block_data.has_bottle_2 set value null
#data modify storage macro: block_data.has_record set value null
#data modify storage macro: block_data.hatch set value null
data modify storage macro: block_data.hinge set value null
#data modify storage macro: block_data.instrument set value null
#data modify storage macro: block_data.inverted set value null
#data modify storage macro: block_data.in_wall set value null
data modify storage macro: block_data.layers set value null
data modify storage macro: block_data.leaves set value null
data modify storage macro: block_data.level set value null
data modify storage macro: block_data.lit set value null
data modify storage macro: block_data.locked set value null
data modify storage macro: block_data.mode set value null
data modify storage macro: block_data.moisture set value null
#data modify storage macro: block_data.note set value null
#data modify storage macro: block_data.occupied set value null
data modify storage macro: block_data.open set value null
#data modify storage macro: block_data.orientation set value null
#data modify storage macro: block_data.part set value null
#data modify storage macro: block_data.persistent set value null
data modify storage macro: block_data.pickles set value null
data modify storage macro: block_data.power set value null
data modify storage macro: block_data.powered set value null
data modify storage macro: block_data.rotation set value null
data modify storage macro: block_data.signal_fire set value null
data modify storage macro: block_data.shape set value null
#data modify storage macro: block_data.short set value null
data modify storage macro: block_data.slot_0_occupied set value null
data modify storage macro: block_data.slot_1_occupied set value null
data modify storage macro: block_data.slot_2_occupied set value null
data modify storage macro: block_data.slot_3_occupied set value null
data modify storage macro: block_data.slot_4_occupied set value null
data modify storage macro: block_data.slot_5_occupied set value null
data modify storage macro: block_data.snowy set value null
#data modify storage macro: block_data.stage set value null
data modify storage macro: block_data.tilt set value null
data modify storage macro: block_data.type set value null
#data modify storage macro: block_data.triggered set value null
#data modify storage macro: block_data.unstable set value null
#data modify storage macro: block_data.waterlogged set value null
data modify storage macro: block_data.down set value null
data modify storage macro: block_data.east set value null
data modify storage macro: block_data.north set value null
data modify storage macro: block_data.south set value null
data modify storage macro: block_data.up set value null
data modify storage macro: block_data.west set value null


#ブロックディスプレイに代入
function hide_and_seek:ability/hider/disguise/change_appearance/ with storage macro: block_data
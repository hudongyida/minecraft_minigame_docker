gamerule sendCommandFeedback false

# スコアボードを定義
#UUID
scoreboard objectives add pair_UUID0_1 dummy
scoreboard objectives add pair_UUID1_1 dummy
scoreboard objectives add pair_UUID2_1 dummy
scoreboard objectives add pair_UUID3_1 dummy
scoreboard objectives add pair_UUID0_2 dummy
scoreboard objectives add pair_UUID1_2 dummy
scoreboard objectives add pair_UUID2_2 dummy
scoreboard objectives add pair_UUID3_2 dummy
scoreboard objectives add pair_UUID0_3 dummy
scoreboard objectives add pair_UUID1_3 dummy
scoreboard objectives add pair_UUID2_3 dummy
scoreboard objectives add pair_UUID3_3 dummy
scoreboard objectives add check dummy
#ディスプレイの旋转控制
scoreboard objectives add disguise_block_rotation_lock dummy
scoreboard objectives add disguise_block_rotation_1 dummy
scoreboard objectives add disguise_block_rotation_2 dummy
scoreboard objectives add disguise_block_rotation_3 dummy
scoreboard objectives add disguise_block_rotation_4 dummy
scoreboard objectives add disguise_block_rotation_player dummy
scoreboard objectives add disguise_block_rotation_player_old dummy
scoreboard objectives add disguise_block_rotation_block dummy
#右クリックの使用判定
scoreboard objectives add right_click minecraft.used:minecraft.carrot_on_a_stick
#死亡検知
scoreboard objectives add death deathCount
#サーチ段階を記録
scoreboard objectives add ability_sarch_phase dummy
#サーチにかかったかを記録
scoreboard objectives add ability_sarch_caught dummy
#時間系
scoreboard objectives add time dummy
#一時的に雑に使えるscoreboardを作成
scoreboard objectives add reserve_1 dummy
scoreboard objectives add reserve_2 dummy
scoreboard objectives add reserve_3 dummy
scoreboard objectives add reserve_4 dummy
scoreboard objectives add reserve_5 dummy

# ステータス系
scoreboard objectives add HP dummy
scoreboard objectives add HP_old dummy
scoreboard objectives add hp_range dummy
scoreboard objectives add MP dummy
scoreboard objectives add MP_old dummy
scoreboard objectives add use_ability dummy
scoreboard objectives add damaged dummy
#カスタム酸素量
scoreboard objectives add Air dummy

# ストレージを定義
#block_state取得用
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


#チームを作成
team add hider
team modify hider collisionRule never
team modify hider seeFriendlyInvisibles false
team modify hider prefix {"text":"[Hider]","color":"aqua"}
team add seeker
team modify seeker prefix {"text":"[Seeker]","color":"dark_red"}

#UI用のスコアボード用意
scoreboard objectives add max_hp dummy
scoreboard objectives add max_hp_10 dummy
scoreboard objectives add max_hp_80 dummy
scoreboard objectives add max_mp dummy
scoreboard objectives add max_mp_10 dummy
scoreboard objectives add max_mp_80 dummy
scoreboard objectives add max_air_default dummy
scoreboard objectives add max_air_custom dummy
scoreboard objectives add max_air_custom_10 dummy
scoreboard objectives add bubble_pop dummy
#UIストレージの用意
data modify storage macro: ui_temp set value {hp_output:"",mp_output:"",armor_output:"",air_output:"",effect_output:"",effect_icon:"",vehicle_output:""}



# 初期設定
#player
execute unless data storage settings: player.hp run data modify storage settings: player.hp set value 2000
execute unless data storage settings: player.mp run data modify storage settings: player.mp set value 2000
execute unless score #Gamemanager hp_range matches 0.. run scoreboard players set #GameManager hp_range 400
execute unless data storage settings: player.air run data modify storage settings: player.air set value 50

#camp
execute unless data storage settings: camp.seeker.count run data modify storage settings: camp.seeker.count set value 3

#ability
#hider
#decoy
execute unless data storage settings: ability.decoy.hp run data modify storage settings: ability.decoy.hp set value 100
execute unless data storage settings: ability.decoy.mp run data modify storage settings: ability.decoy.mp set value 1200
execute unless data storage settings: ability.decoy.time run data modify storage settings: ability.decoy.time set value 600
#fly_hider
execute unless data storage settings: ability.fly_hider.mp run data modify storage settings: ability.fly_hider.mp set value 1600
#seeker
#attack_bullet
execute unless data storage settings: ability.attack_bullet.mp run data modify storage settings: ability.attack_bullet.mp set value 60
#scan
execute unless data storage settings: ability.scan.mp run data modify storage settings: ability.scan.mp set value 1300
#fly_seeker
execute unless data storage settings: ability.fly_seeker.mp run data modify storage settings: ability.fly_seeker.mp set value 300


#ゲーム進行用
scoreboard objectives add game_timer dummy


# 最終処理
execute store result score #GameManager HP run data get storage settings: player.hp
execute store result score #GameManager MP run data get storage settings: player.mp
#ダメージを受ける酸素ラインを算出
execute store result score #GameManager reserve_1 run data get storage settings: player.air
scoreboard players set #GameManager Air 300
scoreboard players operation #GameManager Air -= #GameManager reserve_1
#UIのsetup
function hide_and_seek:ui/.setup
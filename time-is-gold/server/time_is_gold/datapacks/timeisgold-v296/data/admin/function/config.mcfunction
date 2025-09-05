# 상점 가격 환율(?) 설정
scoreboard players set #ARROW system.shop.price_ratio 100
scoreboard players set #GUNPOWDER system.shop.price_ratio 150
scoreboard players set #URANIUM system.shop.price_ratio 300

# 아이템 희귀도에 따른 기본 가격 배율 설정
scoreboard players set #SYSTEM system.shop.price_scale 600

### LOBBY - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

# 로비 아이템 커맨드 쿨다운
scoreboard players set #SYSTEM system.lobby.item.cooldown 10

# 게임 시작 포탈 쿨다운
scoreboard players set #SYSTEM system.lobby.portal.cooldown 300

### ITEMS - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

# 데미지 인디케이터 텍스트 표시 시간
scoreboard players set #SYSTEM system.damage_indicator.display_tick 15

# 아이템 사용 시 알림 쿨다운
scoreboard players set #SYSTEM item.utils.notify.cooldown 8

# 아이템 최소 쿨다운(쿨다운 감소 스탯은 기본값이 이 값보다 클 경우에만 적용)
scoreboard players set #MIN_VALUE item.utils.cooldown.modified_base 20

# 레이저 캐논 HUD 쿨다운
scoreboard players set #SYSTEM item.utils.laser_cannon.hud.tick 40

# 기절 효과 지속 시간
scoreboard players set #SYSTEM combat.stun 300
scoreboard players set #ELITE combat.stun 150

### DUNGEONS - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

# 포탈 진입 후 활성화까지 딜레이
scoreboard players set #SYSTEM system.portal.enter_tick 80

# 포탈 사용 후 쿨다운
scoreboard players set #SYSTEM system.portal.cooldown 600

# 방 입장 후 발광 효과 부여까지 딜레이
scoreboard players set #SYSTEM dungeon.rooms.glow_mobs.tick 400

# 던전 생성 시 시작 방 ~ 보스 포탈 방까지의 거리 범위
scoreboard players set #MIN_VALUE dungeon.generator.entrance_distance 7
scoreboard players set #MAX_VALUE dungeon.generator.entrance_distance 9

# 마지막 층 설정
scoreboard players set #SYSTEM dungeon.final_floor 2

# 방 ID 랜덤 범위 설정
scoreboard players set #FLOOR0 dungeon.generator.room_id.min 2
scoreboard players set #FLOOR0 dungeon.generator.room_id.max 6

scoreboard players set #FLOOR1 dungeon.generator.room_id.min 2
scoreboard players set #FLOOR1 dungeon.generator.room_id.max 9

scoreboard players set #FLOOR2 dungeon.generator.room_id.min 2
scoreboard players set #FLOOR2 dungeon.generator.room_id.max 9

# 특수 방 컨피그 설정
scoreboard players set #MIN_VALUE dungeon.special_rooms.supply.entrance_distance 3
scoreboard players set #MAX_VALUE dungeon.special_rooms.supply.entrance_distance 5

### MONSTERS - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

# 엔지니어 B 컨피그
scoreboard players set #SYSTEM monsters.floor1.engineer_b.build 100
scoreboard players set #SYSTEM monsters.floor1.engineer_b.max_build 4

# 엔지니어 C 컨피그
scoreboard players set #SYSTEM monsters.floor1.engineer_c.craft 80

# 드론 캐리어 컨피그
scoreboard players set #SYSTEM monsters.floor1.drone_carrier.summonize_tick 240
scoreboard players set #SYSTEM monsters.floor1.drone_carrier.max_drone 5
scoreboard players set #SYSTEM monsters.floor1.drone.tick 240

# 차원술사 컨피그
scoreboard players set #SYSTEM monsters.floor2.riftmancer.max_summon 3

# 돌연변이 실험체 컨피그
scoreboard players set #SYSTEM monsters.floor2.mutant_specimen.cooldown 100

### BOSSES - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

# 보스 컷씬 재생 시간
scoreboard players set #SYSTEM bosses.utils.cutscene.tick 244
scoreboard players set #SYSTEM bosses.utils.cutscene.transition 122

# 보스 음악 재생 시간
scoreboard players set #SYSTEM bosses.utils.music.loop_tick 4040

# 오토마톤 패턴 컨피그
scoreboard players set #SYSTEM bosses.automaton.global.cooldown 30

scoreboard players set #SYSTEM bosses.automaton.pattern2.cooldown 160
scoreboard players set #BERSERK bosses.automaton.pattern2.cooldown 120
scoreboard players set #SYSTEM bosses.automaton.pattern2.shockwave_life_tick 100

scoreboard players set #SYSTEM bosses.automaton.pattern3.cooldown 200

scoreboard players set #SYSTEM bosses.automaton.pattern4.cooldown 600
scoreboard players set #SYSTEM bosses.automaton.pattern4.countdown_max_tick 160

scoreboard players set #SYSTEM bosses.automaton.pattern5.spawn_delay 60
scoreboard players set #SYSTEM bosses.automaton.pattern5.random_pos_count 4
scoreboard players set #SYSTEM bosses.automaton.pattern5.tick 60

# 제사장 패턴 컨피그
scoreboard players set #SYSTEM bosses.the_shaman.pattern1.cooldown 70
scoreboard players set #SYSTEM bosses.the_shaman.pattern1.mirror_shard.tick 100

scoreboard players set #SYSTEM bosses.the_shaman.pattern2.cooldown 400
scoreboard players set #SYSTEM bosses.the_shaman.pattern2.mirror.max_on_sight 20
scoreboard players set #SYSTEM bosses.the_shaman.pattern2.mirror.spawn_delay 40

scoreboard players set #SYSTEM bosses.the_shaman.pattern3.cooldown 120
scoreboard players set #SYSTEM bosses.the_shaman.pattern3.chalice.spawn_sfx 10
scoreboard players set #SYSTEM bosses.the_shaman.pattern3.chalice.destroy_tick 60

scoreboard players set #SYSTEM bosses.the_shaman.pattern4.cooldown 200
scoreboard players set #SYSTEM bosses.the_shaman.pattern4.marker_tick 60

scoreboard players set #SYSTEM bosses.the_shaman.pattern5.cooldown 600
scoreboard players set #SYSTEM bosses.the_shaman.pattern5.outside_border_tick 20

scoreboard players set #SYSTEM bosses.the_shaman.pattern6.cooldown 320
scoreboard players set #SYSTEM bosses.the_shaman.pattern6.clone.max_on_sight 100

# 각 층 별 방 개수 설정 -> system:dungeon/generator/place_structure에서 각 층 별 allocate_id 함수에서 직접 설정
# 문을 열 때 발동하는 효과를 보유한 아이템의 능력 실행
# 이 함수는 system:dungeon/doors/tick 함수에서 실행됩니다.
# 실행 인자: 문을 연 플레이어
# 실행 위치: 방의 정 중앙(room.generate_center)

# $(room_id)    - 열린 방의 ID

### 주의! - 이 함수가 실행되는 시점에는 dungeon.door.open, dungeon.door.open.opposite 인터랙션이 아직 존재합니다.


### SYSTEM - - - - - - - - - - - - - - - - -



### ACTIVE ITEMS - - - - - - - - - - - - - -



###被动物品S - - - - - - - - - - - - - -

# sledgehammer
execute as @s run function it:tech/passive/sledgehammer/door_open

# door_breaching_manual
execute as @s run function it:tech/passive/door_breaching_manual/door_open

### MELEE WEAPONS - - - - - - - - - - - - - -



### RANGED WEAPONS - - - - - - - - - - - -



### WAND WEAPONS - - - - - - - - - - - - -



### POTION EXPENDABLES - - - - - - - - - -



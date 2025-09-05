# 플레이어가 발사한 화살을 대상으로 실행되는 함수.
# 실행 인자: 플레이어가 발사한 화살
# 호출 함수: it:tech/utils/arrow/step

### ACTIVE ITEMS - - - - - - - - - - - - - -



###被动物品S - - - - - - - - - - - - - -

# space_helmet
execute if function it:tech/passive/space_helmet/player_arrow/check run function it:tech/passive/space_helmet/player_arrow/init

# gauss_coil
execute if function it:tech/passive/gauss_coil/player_arrow/check run function it:tech/passive/gauss_coil/player_arrow/init

# tiny_rocket
execute if function it:tech/passive/tiny_rocket/player_arrow/check run function it:tech/passive/tiny_rocket/player_arrow/init

### MELEE WEAPONS - - - - - - - - - - - - - -



### RANGED WEAPONS - - - - - - - - - - - -

# explosive_bow
execute as @s[tag=explosive_bow] run function it:tech/ranged/explosive_bow/functions/init

### WAND WEAPONS - - - - - - - - - - - - -



### POTION EXPENDABLES - - - - - - - - - -



### SYSTEM - - - - - - - - - - - - - - - - -



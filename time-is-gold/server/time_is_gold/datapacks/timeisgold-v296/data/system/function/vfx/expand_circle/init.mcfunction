# 원이 퍼지는 함수
# $(range)  - 원의 최대 반경(단위: 블록)
# $(step)   - 틱 당 증가할 반경(단위: 0.1 블록)
# $(R)      - R 값
# $(G)      - G 값
# $(B)      - B 값
# function it:tech/utils/particle/expand_circle/call {R:, G:, B:, range:, step:}
# 예시: 5칸을 0.1씩 퍼지게하려면 step:1, range:5
# step은 1, 5, 10같이 5의 배수로 사용하면 더욱 정확하고 9, 2도 허용범위.

$execute positioned ~ ~ ~ run summon marker ~ ~ ~ {Tags:["system.vfx.expand_circle.marker","system.vfx.expand_circle.marker.uninitialized"],data:{step:0, angle:0, radius:0.0, R:$(R), G:$(G), B:$(B)}}
$execute positioned ~ ~ ~ as @n[type=marker,tag=system.vfx.expand_circle.marker.uninitialized,distance=..0.5] run function system:vfx/expand_circle/set_data {range:$(range), step:$(step)}
# 실행 인자 -> 없음. execute positioned 등으로 원하는 좌표에서만 실행시키면 됩니다.
# $(duration)   - 타이머의 시간(단위는 Tick)
# $(radius)     - 타이머의 반경(단위는 블록)
# $(distance)   - 타이머 파티클 간의 간격(1 이상)
# $(clock_r)    - 타이머 파티클 R 값(0 ~ 1 사이)
# $(clock_g)    - 타이머 파티클 G 값(0 ~ 1 사이)
# $(clock_b)    - 타이머 파티클 B 값(0 ~ 1 사이)

### 주의! - duration 및 radius 값에 비해 distance 값이 너무 작을 경우 심각한 렉을 유발할 수 있음.

$execute positioned ~ ~ ~ run summon marker ~ ~ ~ {Tags:["system.vfx.clock_rotate.marker","system.vfx.clock_rotate.marker.uninitialized","admin.kill_on_reset"],data:{radius:$(radius),angle:0,distance:$(distance),clock_r:$(clock_r),clock_g:$(clock_g),clock_b:$(clock_b),count:0}}
$execute positioned ~ ~ ~ as @n[type=marker,tag=system.vfx.clock_rotate.marker.uninitialized,distance=..0.5] run function system:vfx/clock_rotate/set_data {duration:$(duration)}
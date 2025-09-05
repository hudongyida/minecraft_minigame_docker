$execute store result storage timeisgold:random shuffle_range.value int 1 run data get storage timeisgold:random shuffle_range.list[$(index)]
$data remove storage timeisgold:random shuffle_range.list[$(index)]
return run data get storage timeisgold:random shuffle_range.value
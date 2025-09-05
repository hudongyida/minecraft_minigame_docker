execute positioned ~ ~ ~ run summon armor_stand ~ ~ ~ {Tags:[bfs.vertex],Invulnerable:true,NoGravity:true}
$execute if score #GraphManager dungeon.generator.graph_iterator.x < #GraphManager dungeon.generator.graph_size.x positioned ~$(vertex_len) ~ ~ run summon armor_stand ~ ~ ~ {Tags:[bfs.edge,bfs.edge.x],Invulnerable:true,NoGravity:true}
$execute if score #GraphManager dungeon.generator.graph_iterator.x = #GraphManager dungeon.generator.graph_size.x positioned ~$(vertex_len) ~ ~ run summon armor_stand ~ ~ ~ {Tags:[bfs.edge,bfs.edge.x,bfs.edge.removed],Invulnerable:true,NoGravity:true}
$execute if score #GraphManager dungeon.generator.graph_iterator.x matches 0 positioned ~-$(edge_len) ~ ~ run summon armor_stand ~ ~ ~ {Tags:[bfs.edge,bfs.edge.x,bfs.edge.removed],Invulnerable:true,NoGravity:true}

scoreboard players add #GraphManager dungeon.generator.graph_iterator.x 1

$execute positioned ~$(vertex_len) ~ ~ positioned ~$(edge_len) ~ ~ if score #GraphManager dungeon.generator.graph_iterator.x <= #GraphManager dungeon.generator.graph_size.x run function system:dungeon/generator/place_marker/loop_x_vertex {vertex_len:$(vertex_len),edge_len:$(edge_len)}
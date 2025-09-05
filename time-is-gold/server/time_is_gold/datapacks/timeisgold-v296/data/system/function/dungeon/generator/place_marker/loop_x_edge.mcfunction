execute positioned ~ ~ ~ run summon armor_stand ~ ~ ~ {Tags:[bfs.edge,bfs.edge.z],Invulnerable:true,NoGravity:true}
scoreboard players add #GraphManager dungeon.generator.graph_iterator.x 1

$execute positioned ~$(vertex_len) ~ ~ positioned ~$(edge_len) ~ ~ if score #GraphManager dungeon.generator.graph_iterator.x <= #GraphManager dungeon.generator.graph_size.x run function system:dungeon/generator/place_marker/loop_x_edge {vertex_len:$(vertex_len),edge_len:$(edge_len)}
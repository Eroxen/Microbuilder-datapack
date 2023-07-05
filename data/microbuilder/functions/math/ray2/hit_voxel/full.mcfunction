data modify storage ray2:calc root.hit_candidates append value {types:["microbuilder:micro_scene"],pos:[0,0,0]}
execute if score #ray2.pos.x microbuilder.calc = #ray2.next_block_start.x ray2.calc run data modify storage ray2:calc root.hit_candidates[-1].normal set value 0
execute if score #ray2.pos.y microbuilder.calc = #ray2.next_block_start.y ray2.calc run data modify storage ray2:calc root.hit_candidates[-1].normal set value 1
execute if score #ray2.pos.z microbuilder.calc = #ray2.next_block_start.z ray2.calc run data modify storage ray2:calc root.hit_candidates[-1].normal set value 2

scoreboard players set #ray2.hit microbuilder.calc 1
scoreboard players set #ray2.stop microbuilder.calc 1

function microbuilder:math/ray2/hit_voxel
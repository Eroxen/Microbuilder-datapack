data modify storage ray2:calc root.mfi.data set from storage microbuilder:registry state.partial
scoreboard players operation #ray2.mfi.entry.x ray2.calc = #ray2.pos.x microbuilder.calc
scoreboard players operation #ray2.mfi.entry.y ray2.calc = #ray2.pos.y microbuilder.calc
scoreboard players operation #ray2.mfi.entry.z ray2.calc = #ray2.pos.z microbuilder.calc
function ray2:api/multiface_intersect

execute if score #ray2.mfi.hit ray2.calc matches 0 run return 0

scoreboard players operation #ray2.partial_distance microbuilder.calc += #ray2.mfi.distance ray2.calc

data modify storage ray2:calc root.hit_candidates append value {types:["microbuilder:micro_scene"],pos:[0,0,0]}
scoreboard players operation #ray2.pos.x microbuilder.calc = #ray2.mfi.hit.x ray2.calc
scoreboard players operation #ray2.pos.y microbuilder.calc = #ray2.mfi.hit.y ray2.calc
scoreboard players operation #ray2.pos.z microbuilder.calc = #ray2.mfi.hit.z ray2.calc
execute store result storage ray2:calc root.hit_candidates[-1].normal int 1 run scoreboard players get #ray2.mfi.axis ray2.calc

function microbuilder:math/ray2/hit_voxel
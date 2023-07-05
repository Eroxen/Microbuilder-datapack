#####################################################################
# internal/scan/partial.mcfunction
# written by Eroxen
#
# called when the ray intersects with a partial block
#####################################################################

function ray2:data/partial_mfi_data
execute if score #ray2.debug ray2.calc matches 4.. run tellraw @a ["",{"text":"partial mfi data: "},{"nbt":"root.partial_mfi_data","storage":"ray2:calc","color":"red"}]

data modify storage ray2:calc root.mfi.data set from storage ray2:calc root.partial_mfi_data
scoreboard players operation #ray2.mfi.entry.x ray2.calc = #ray2.pos.x ray2.calc
scoreboard players operation #ray2.mfi.entry.y ray2.calc = #ray2.pos.y ray2.calc
scoreboard players operation #ray2.mfi.entry.z ray2.calc = #ray2.pos.z ray2.calc
function ray2:api/multiface_intersect
execute if score #ray2.mfi.hit ray2.calc matches 0 run return 0

scoreboard players operation #ray2.partial_distance ray2.calc = #ray2.traversed_distance ray2.calc
scoreboard players operation #ray2.partial_distance ray2.calc += #ray2.mfi.distance ray2.calc

execute if score #ray2.partial_distance ray2.calc > #ray2.max_distance ray2.calc run return 0

data modify storage ray2:calc root.hit_candidates append value {types:["partial_block","block"],pos:[0,0,0]}
execute store result storage ray2:calc root.hit_candidates[-1].pos[0] int 1 run scoreboard players get #ray2.mfi.axis ray2.calc
execute store result storage ray2:calc root.hit_candidates[-1].pos[0] int 1 run scoreboard players get #ray2.mfi.hit.x ray2.calc
execute store result storage ray2:calc root.hit_candidates[-1].pos[1] int 1 run scoreboard players get #ray2.mfi.hit.y ray2.calc
execute store result storage ray2:calc root.hit_candidates[-1].pos[2] int 1 run scoreboard players get #ray2.mfi.hit.z ray2.calc
execute store result storage ray2:calc root.hit_candidates[-1].distance int 1 run scoreboard players get #ray2.partial_distance ray2.calc

scoreboard players set #ray2.hit ray2.calc 1
scoreboard players set #ray2.stop ray2.calc 1
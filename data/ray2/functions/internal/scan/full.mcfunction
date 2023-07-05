#####################################################################
# internal/scan/full.mcfunction
# written by Eroxen
#
# called when the ray intersects with a full block
#####################################################################

data modify storage ray2:calc root.hit_candidates append value {types:["full_block","block"],pos:[0,0,0]}
execute if score #ray2.pos.x ray2.calc = #ray2.next_block_start.x ray2.calc run data modify storage ray2:calc root.hit_candidates[-1].normal set value 0
execute if score #ray2.pos.y ray2.calc = #ray2.next_block_start.y ray2.calc run data modify storage ray2:calc root.hit_candidates[-1].normal set value 1
execute if score #ray2.pos.z ray2.calc = #ray2.next_block_start.z ray2.calc run data modify storage ray2:calc root.hit_candidates[-1].normal set value 2

execute store result storage ray2:calc root.hit_candidates[-1].pos[0] int 1 run scoreboard players get #ray2.pos.x ray2.calc
execute store result storage ray2:calc root.hit_candidates[-1].pos[1] int 1 run scoreboard players get #ray2.pos.y ray2.calc
execute store result storage ray2:calc root.hit_candidates[-1].pos[2] int 1 run scoreboard players get #ray2.pos.z ray2.calc

execute store result storage ray2:calc root.hit_candidates[-1].distance int 1 run scoreboard players get #ray2.traversed_distance ray2.calc
scoreboard players set #ray2.hit ray2.calc 1
scoreboard players set #ray2.stop ray2.calc 1
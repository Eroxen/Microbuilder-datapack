execute store result score #ray2.min_distance ray2.calc run data get storage ray2:calc root.hit_candidates[0].distance
data modify storage ray2:calc root.selected_candidate set from storage ray2:calc root.hit_candidates[0]
data remove storage ray2:calc root.hit_candidates[0]

execute if data storage ray2:calc root.hit_candidates[0] run function ray2:internal/select_candidate_loop

data modify storage ray2:api result.hit set value 1b
execute store result storage ray2:api result.distance double 0.001 run data get storage ray2:calc root.selected_candidate.distance
data modify storage ray2:api result.hit_types set from storage ray2:calc root.selected_candidate.types

data modify storage ray2:api result.block set value [0,0,0]
execute store result storage ray2:api result.block[0] int 1 run scoreboard players get #ray2.block.x ray2.calc
execute store result storage ray2:api result.block[1] int 1 run scoreboard players get #ray2.block.y ray2.calc
execute store result storage ray2:api result.block[2] int 1 run scoreboard players get #ray2.block.z ray2.calc

data modify storage ray2:api result.sub_block_pos set value [0d,0d,0d]
execute store result storage ray2:api result.sub_block_pos[0] double 0.001 run scoreboard players get #ray2.pos.x ray2.calc
execute store result storage ray2:api result.sub_block_pos[1] double 0.001 run scoreboard players get #ray2.pos.y ray2.calc
execute store result storage ray2:api result.sub_block_pos[2] double 0.001 run scoreboard players get #ray2.pos.z ray2.calc

data modify storage ray2:api result.pos set value [0d,0d,0d]
scoreboard players operation #ray2.temp.world_pos ray2.calc = #ray2.block.x ray2.calc
scoreboard players operation #ray2.temp.world_pos ray2.calc *= #ray2.1000 ray2.calc
execute store result score #ray2.temp.sub_block_pos ray2.calc run data get storage ray2:calc root.selected_candidate.pos[0] 1
scoreboard players operation #ray2.temp.world_pos ray2.calc += #ray2.temp.sub_block_pos ray2.calc
execute store result storage ray2:api result.pos[0] double 0.001 run scoreboard players get #ray2.temp.world_pos ray2.calc
scoreboard players operation #ray2.temp.world_pos ray2.calc = #ray2.block.y ray2.calc
scoreboard players operation #ray2.temp.world_pos ray2.calc *= #ray2.1000 ray2.calc
execute store result score #ray2.temp.sub_block_pos ray2.calc run data get storage ray2:calc root.selected_candidate.pos[1] 1
scoreboard players operation #ray2.temp.world_pos ray2.calc += #ray2.temp.sub_block_pos ray2.calc
execute store result storage ray2:api result.pos[1] double 0.001 run scoreboard players get #ray2.temp.world_pos ray2.calc
scoreboard players operation #ray2.temp.world_pos ray2.calc = #ray2.block.z ray2.calc
scoreboard players operation #ray2.temp.world_pos ray2.calc *= #ray2.1000 ray2.calc
execute store result score #ray2.temp.sub_block_pos ray2.calc run data get storage ray2:calc root.selected_candidate.pos[2] 1
scoreboard players operation #ray2.temp.world_pos ray2.calc += #ray2.temp.sub_block_pos ray2.calc
execute store result storage ray2:api result.pos[2] double 0.001 run scoreboard players get #ray2.temp.world_pos ray2.calc

data modify storage ray2:api result.normal set value {}
execute if data storage ray2:calc root.selected_candidate{normal:0} run data modify storage ray2:api result.normal.axis set value "x"
execute if data storage ray2:calc root.selected_candidate{normal:0} store result storage ray2:api result.normal.sign int -1 run scoreboard players get #ray2.l.sign.x ray2.calc
execute if data storage ray2:calc root.selected_candidate{normal:1} run data modify storage ray2:api result.normal.axis set value "y"
execute if data storage ray2:calc root.selected_candidate{normal:1} store result storage ray2:api result.normal.sign int -1 run scoreboard players get #ray2.l.sign.y ray2.calc
execute if data storage ray2:calc root.selected_candidate{normal:2} run data modify storage ray2:api result.normal.axis set value "z"
execute if data storage ray2:calc root.selected_candidate{normal:2} store result storage ray2:api result.normal.sign int -1 run scoreboard players get #ray2.l.sign.z ray2.calc
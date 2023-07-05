execute store result score #ray2.temp.distance ray2.calc run data get storage ray2:calc root.hit_candidates[0].distance
execute if score #ray2.temp.distance ray2.calc < #ray2.min_distance ray2.calc run data modify storage ray2:calc root.selected_candidate set from storage ray2:calc root.hit_candidates[0]
execute if score #ray2.temp.distance ray2.calc < #ray2.min_distance ray2.calc run scoreboard players operation #ray2.min_distance ray2.calc = #ray2.temp.distance ray2.calc
data remove storage ray2:calc root.hit_candidates[0]

execute if data storage ray2:calc root.hit_candidates[0] run function ray2:internal/select_candidate_loop
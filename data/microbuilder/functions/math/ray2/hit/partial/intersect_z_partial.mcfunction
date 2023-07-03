execute store result score box_min_x microbuilder.calc run data get storage microbuilder:calc math.ray2.partial.z[0].partial[0].x[0] 1000
execute store result score box_max_x microbuilder.calc run data get storage microbuilder:calc math.ray2.partial.z[0].partial[0].x[1] 1000
execute store result score box_min_y microbuilder.calc run data get storage microbuilder:calc math.ray2.partial.z[0].partial[0].y[0] 1000
execute store result score box_max_y microbuilder.calc run data get storage microbuilder:calc math.ray2.partial.z[0].partial[0].y[1] 1000

execute if data storage microbuilder:calc math.ray2.partial.z[0].partial[0].x unless data storage microbuilder:calc math.ray2.partial.z[0].partial[0].y if score surface_x microbuilder.calc >= box_min_x microbuilder.calc if score surface_x microbuilder.calc <= box_max_x microbuilder.calc run scoreboard players set hit_partial_z microbuilder.calc 1
execute if data storage microbuilder:calc math.ray2.partial.z[0].partial[0].y unless data storage microbuilder:calc math.ray2.partial.z[0].partial[0].x if score surface_y microbuilder.calc >= box_min_y microbuilder.calc if score surface_y microbuilder.calc <= box_max_y microbuilder.calc run scoreboard players set hit_partial_z microbuilder.calc 1
execute if data storage microbuilder:calc math.ray2.partial.z[0].partial[0].x if data storage microbuilder:calc math.ray2.partial.z[0].partial[0].y if score surface_x microbuilder.calc >= box_min_x microbuilder.calc if score surface_x microbuilder.calc <= box_max_x microbuilder.calc if score surface_y microbuilder.calc >= box_min_y microbuilder.calc if score surface_y microbuilder.calc <= box_max_y microbuilder.calc run scoreboard players set hit_partial_z microbuilder.calc 1

data remove storage microbuilder:calc math.ray2.partial.z[0].partial[0]
execute if score hit_partial_z microbuilder.calc matches 0 if data storage microbuilder:calc math.ray2.partial.z[0].partial[0] run function microbuilder:math/ray2/hit/partial/intersect_z_partial
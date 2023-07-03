execute if predicate microbuilder:raycast/full run tag @s add microbuilder.math.raycast.hit
execute if predicate microbuilder:raycast/partial_y run function microbuilder:math/raycast/intersect_partial_y
execute if predicate microbuilder:raycast/partial_xz run function microbuilder:math/raycast/intersect_partial_xz
execute if predicate microbuilder:raycast/partial_xyz run function microbuilder:math/raycast/intersect_partial_xyz
execute if predicate microbuilder:raycast/partial_xyz_rotatable run function microbuilder:math/raycast/intersect_partial_xyz_rotatable
execute if data storage microbuilder:calc math.raycast.current_block{has_micro_scene:1b} run function microbuilder:math/raycast/intersect_micro_scene
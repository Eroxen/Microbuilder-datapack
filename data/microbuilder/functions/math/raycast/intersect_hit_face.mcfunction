execute align x align y align z unless entity @e[type=marker,tag=microbuilder.math.raycast.current_block,distance=..0.1] run function microbuilder:math/raycast/enter_new_block

execute unless predicate microbuilder:raycast/ignore run function microbuilder:math/raycast/intersect
execute if predicate microbuilder:raycast/ignore if data storage microbuilder:calc math.raycast.current_block{has_micro_scene:1b} run function microbuilder:math/raycast/intersect
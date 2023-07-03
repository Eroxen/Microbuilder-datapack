tp @s ~ ~ ~
execute align x align y align z unless entity @e[type=marker,tag=microbuilder.math.raycast.current_block,distance=..0.1] run function microbuilder:math/raycast/enter_new_block
scoreboard players remove ray_i microbuilder.calc 1
execute unless predicate microbuilder:raycast/ignore run function microbuilder:math/raycast/intersect
execute if predicate microbuilder:raycast/ignore if data storage microbuilder:calc math.raycast.current_block{has_micro_scene:1b} run function microbuilder:math/raycast/intersect

execute if data storage microbuilder:calc math.raycast{report_hit_face:1b} if entity @s[tag=microbuilder.math.raycast.hit] positioned ^ ^ ^-0.05 run function microbuilder:math/raycast/report_hit_face

execute if score ray_i microbuilder.calc matches 1.. unless entity @s[tag=microbuilder.math.raycast.hit] positioned ^ ^ ^0.05 run function microbuilder:math/raycast/loop
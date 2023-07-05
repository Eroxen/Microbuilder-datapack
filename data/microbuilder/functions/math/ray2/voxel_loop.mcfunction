#tellraw @a ["",{"score":{"name":"#ray2.voxel.x","objective":"microbuilder.calc"},"color":"green"},{"text":" "},{"score":{"name":"#ray2.voxel.y","objective":"microbuilder.calc"},"color":"green"},{"text":" "},{"score":{"name":"#ray2.voxel.z","objective":"microbuilder.calc"},"color":"green"},{"text":" @ "},{"score":{"name":"#ray2.pos.x","objective":"microbuilder.calc"},"color":"light_purple"},{"text":" "},{"score":{"name":"#ray2.pos.y","objective":"microbuilder.calc"},"color":"light_purple"},{"text":" "},{"score":{"name":"#ray2.pos.z","objective":"microbuilder.calc"},"color":"light_purple"}]
#tellraw @a [{"text":"","color":"gold"},{"score":{"name":"#ray2.stop","objective":"microbuilder.calc"}}]
#tellraw @a [{"text":"","color":"gold"},{"score":{"name":"#ray2.stop","objective":"microbuilder.calc"}}]
function microbuilder:math/ray2/scan_voxel

function microbuilder:math/ray2/voxel_loop/goto
scoreboard players operation #ray2.traversed_distance microbuilder.calc += #ray2.goto_distance microbuilder.calc
execute if score #ray2.voxel.x microbuilder.calc matches ..-1 run scoreboard players set #ray2.stop microbuilder.calc 1
execute if score #ray2.voxel.y microbuilder.calc matches ..-1 run scoreboard players set #ray2.stop microbuilder.calc 1
execute if score #ray2.voxel.z microbuilder.calc matches ..-1 run scoreboard players set #ray2.stop microbuilder.calc 1
execute if score #ray2.voxel.x microbuilder.calc >= scale microbuilder.calc run scoreboard players set #ray2.stop microbuilder.calc 1
execute if score #ray2.voxel.y microbuilder.calc >= scale microbuilder.calc run scoreboard players set #ray2.stop microbuilder.calc 1
execute if score #ray2.voxel.z microbuilder.calc >= scale microbuilder.calc run scoreboard players set #ray2.stop microbuilder.calc 1

#tellraw @a [{"text":"","color":"red"},{"score":{"name":"#ray2.voxel.x","objective":"microbuilder.calc"}},{"text":" "},{"score":{"name":"#ray2.voxel.y","objective":"microbuilder.calc"}},{"text":" "},{"score":{"name":"#ray2.voxel.z","objective":"microbuilder.calc"}}]
#tellraw @a [{"text":"","color":"gold"},{"score":{"name":"#ray2.stop","objective":"microbuilder.calc"}}]

execute if score #ray2.stop microbuilder.calc matches 1 run return 0

# - #ray2.pos.x, .y, .z microbuilder.calc : new sub-voxel positions
# - #ray2.voxel.x, .y, .z microbuilder.calc : new voxel positions
execute if score #ray2.stop microbuilder.calc matches 0 run function microbuilder:math/ray2/voxel_loop
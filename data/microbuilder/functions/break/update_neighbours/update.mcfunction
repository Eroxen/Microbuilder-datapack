data modify storage microbuilder:calc update_neighbours.perspective.neighbour set from storage microbuilder:calc update_neighbours.this
data modify storage microbuilder:calc update_neighbours.stack.neighbours set from storage microbuilder:calc neighbours
execute store result score #place.updated_state microbuilder.calc run data get storage microbuilder:calc update_neighbours.perspective.this.element.state[1]
scoreboard players operation #place.updated_state.before microbuilder.calc = #place.updated_state microbuilder.calc

execute if data storage microbuilder:calc update_neighbours.perspective.this.property{type:"fence"} run function microbuilder:place/get_state/fence/update
execute if data storage microbuilder:calc update_neighbours.perspective.this.property{type:"stairs"} run function microbuilder:place/get_state/stairs/update
execute if data storage microbuilder:calc update_neighbours.perspective.this.property{type:"wall"} run function microbuilder:place/get_state/wall/update
execute if data storage microbuilder:calc update_neighbours.perspective.this.property{type:"pane"} run function microbuilder:place/get_state/pane/update

data modify storage microbuilder:calc neighbours set from storage microbuilder:calc update_neighbours.stack.neighbours
execute if score #place.updated_state microbuilder.calc = #place.updated_state.before microbuilder.calc run return 0

data modify storage microbuilder:calc scene_element set from storage microbuilder:calc update_neighbours.perspective.this.element
execute store result storage microbuilder:calc scene_element.state[1] int 1 run scoreboard players get #place.updated_state microbuilder.calc
function microbuilder:scene/api/set_element
data modify entity @s data.scene set from storage microbuilder:calc scene
function microbuilder:scene/api/render_single
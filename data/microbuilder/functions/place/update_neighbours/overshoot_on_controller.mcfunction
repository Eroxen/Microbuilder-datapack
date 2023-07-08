data modify storage microbuilder:calc update_neighbours.stack.scene set from storage microbuilder:calc scene
data modify storage microbuilder:calc scene set from entity @s data.scene

function microbuilder:place/update_neighbours/update

data modify storage microbuilder:calc scene set from storage microbuilder:calc update_neighbours.stack.scene
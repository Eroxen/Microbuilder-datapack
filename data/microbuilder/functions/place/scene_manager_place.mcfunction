data modify storage microbuilder:calc scene_element set from storage microbuilder:calc place.scene_element
function microbuilder:scene/api/set_element
data modify entity @s data.scene set from storage microbuilder:calc scene
data modify storage microbuilder:calc place.success set value 1b
function microbuilder:scene/api/render_single
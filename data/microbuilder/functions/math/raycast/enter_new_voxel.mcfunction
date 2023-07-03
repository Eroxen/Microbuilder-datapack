data modify storage microbuilder:calc scene set from storage microbuilder:calc math.raycast.current_block.micro_scene.scene
function microbuilder:scene/get_element
execute store result score contents microbuilder.calc run data get storage microbuilder:calc scene_element

data modify storage microbuilder:calc math.raycast.current_voxel set value {ignore:1b}
execute if score contents microbuilder.calc matches 1.. run data modify storage microbuilder:calc math.raycast.current_voxel.ignore set value 0b
scoreboard players set kill microbuilder.calc 0

data modify storage microbuilder:calc scene_element set value {}
function microbuilder:scene/set_element
execute unless data storage microbuilder:calc scene[][][].data run scoreboard players set kill microbuilder.calc 1
data modify entity @s data.scene set from storage microbuilder:calc scene
data modify storage microbuilder:calc break.success set value 1b

data modify storage microbuilder:calc scene_element set value {destroy:1b}
function microbuilder:scene/set_element
function microbuilder:scene/render

execute if score kill microbuilder.calc matches 1 run kill @s
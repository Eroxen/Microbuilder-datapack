data modify storage microbuilder:calc math.rotation set value {horizontal:"north",vertical:"level",full:"north",inverse:{horizontal:"south",vertical:"level",full:"south"}}

execute if entity @s[y_rotation=-135..-45] run data modify storage microbuilder:calc math.rotation.horizontal set value "east"
execute if entity @s[y_rotation=-45..45] run data modify storage microbuilder:calc math.rotation.horizontal set value "south"
execute if entity @s[y_rotation=45..135] run data modify storage microbuilder:calc math.rotation.horizontal set value "west"

execute if entity @s[x_rotation=-90..-45] run data modify storage microbuilder:calc math.rotation.vertical set value "up"
execute if entity @s[x_rotation=45..90] run data modify storage microbuilder:calc math.rotation.vertical set value "down"

execute if data storage microbuilder:calc math.rotation{vertical:"level"} run data modify storage microbuilder:calc math.rotation.full set from storage microbuilder:calc math.rotation.horizontal
execute unless data storage microbuilder:calc math.rotation{vertical:"level"} run data modify storage microbuilder:calc math.rotation.full set from storage microbuilder:calc math.rotation.vertical


execute if data storage microbuilder:calc math.rotation{horizontal:"east"} run data modify storage microbuilder:calc math.rotation.inverse.horizontal set value "west"
execute if data storage microbuilder:calc math.rotation{horizontal:"south"} run data modify storage microbuilder:calc math.rotation.inverse.horizontal set value "north"
execute if data storage microbuilder:calc math.rotation{horizontal:"west"} run data modify storage microbuilder:calc math.rotation.inverse.horizontal set value "east"

execute if data storage microbuilder:calc math.rotation{vertical:"up"} run data modify storage microbuilder:calc math.rotation.inverse.vertical set value "down"
execute if data storage microbuilder:calc math.rotation{vertical:"down"} run data modify storage microbuilder:calc math.rotation.inverse.vertical set value "up"

execute if data storage microbuilder:calc math.rotation.inverse{vertical:"level"} run data modify storage microbuilder:calc math.rotation.inverse.full set from storage microbuilder:calc math.rotation.inverse.horizontal
execute unless data storage microbuilder:calc math.rotation.inverse{vertical:"level"} run data modify storage microbuilder:calc math.rotation.inverse.full set from storage microbuilder:calc math.rotation.inverse.vertical
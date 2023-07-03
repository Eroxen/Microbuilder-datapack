execute align x align y align z positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=microbuilder.scene_manager,distance=..0.1] run function microbuilder:place/new_scene_manager

summon marker ~ ~ ~ {Tags:["microbuilder.coordinate_getter"]}
data modify storage microbuilder:calc place set value {success:0b}
data modify storage microbuilder:calc place.Pos set from entity @e[type=marker,tag=microbuilder.coordinate_getter,distance=..0.1,limit=1] Pos
kill @e[type=marker,tag=microbuilder.coordinate_getter,distance=..1]
data modify storage microbuilder:calc place.Item set from entity @s SelectedItem

## scene element
data modify storage microbuilder:calc place.scene_element set value {}
data modify storage microbuilder:calc place.scene_element.Item set from storage microbuilder:calc place.Item
data modify storage microbuilder:calc place.scene_element.Item.Count set value 1b
# default
execute if predicate microbuilder:held_item_handling/default run data modify storage microbuilder:calc place.scene_element.block_state.Name set from storage microbuilder:calc place.scene_element.Item.id
# pillar
execute if predicate microbuilder:held_item_handling/pillar run data modify storage microbuilder:calc place.scene_element.block_state.Properties set value {axis:"y"}
execute if predicate microbuilder:held_item_handling/pillar run data modify storage microbuilder:calc place.scene_element.block_state.Name set from storage microbuilder:calc place.scene_element.Item.id
execute if predicate microbuilder:held_item_handling/pillar if data storage microbuilder:calc math.ray2.hit_info.face_normal.z run data modify storage microbuilder:calc place.scene_element.block_state.Properties.axis set value "z"
execute if predicate microbuilder:held_item_handling/pillar if data storage microbuilder:calc math.ray2.hit_info.face_normal.x run data modify storage microbuilder:calc place.scene_element.block_state.Properties.axis set value "x"
# horizontal rotatable towards player
execute if predicate microbuilder:held_item_handling/horizontal_rotatable_towards_player run data modify storage microbuilder:calc place.scene_element.block_state.Properties set value {facing:"north"}
execute if predicate microbuilder:held_item_handling/horizontal_rotatable_towards_player run data modify storage microbuilder:calc place.scene_element.block_state.Name set from storage microbuilder:calc place.scene_element.Item.id
execute if predicate microbuilder:held_item_handling/horizontal_rotatable_towards_player if entity @s[y_rotation=45..135] run data modify storage microbuilder:calc place.scene_element.block_state.Properties.facing set value "east"
execute if predicate microbuilder:held_item_handling/horizontal_rotatable_towards_player if entity @s[y_rotation=135..225] run data modify storage microbuilder:calc place.scene_element.block_state.Properties.facing set value "south"
execute if predicate microbuilder:held_item_handling/horizontal_rotatable_towards_player if entity @s[y_rotation=225..315] run data modify storage microbuilder:calc place.scene_element.block_state.Properties.facing set value "west"
# 6 rotatable towards player
execute if predicate microbuilder:held_item_handling/6_rotatable_towards_player run data modify storage microbuilder:calc place.scene_element.block_state.Properties set value {facing:"north"}
execute if predicate microbuilder:held_item_handling/6_rotatable_towards_player run data modify storage microbuilder:calc place.scene_element.block_state.Name set from storage microbuilder:calc place.scene_element.Item.id
execute if predicate microbuilder:held_item_handling/6_rotatable_towards_player if entity @s[y_rotation=45..135] run data modify storage microbuilder:calc place.scene_element.block_state.Properties.facing set value "east"
execute if predicate microbuilder:held_item_handling/6_rotatable_towards_player if entity @s[y_rotation=135..225] run data modify storage microbuilder:calc place.scene_element.block_state.Properties.facing set value "south"
execute if predicate microbuilder:held_item_handling/6_rotatable_towards_player if entity @s[y_rotation=225..315] run data modify storage microbuilder:calc place.scene_element.block_state.Properties.facing set value "west"
execute if predicate microbuilder:held_item_handling/6_rotatable_towards_player if entity @s[x_rotation=45..90] run data modify storage microbuilder:calc place.scene_element.block_state.Properties.facing set value "up"
execute if predicate microbuilder:held_item_handling/6_rotatable_towards_player if entity @s[x_rotation=-90..-45] run data modify storage microbuilder:calc place.scene_element.block_state.Properties.facing set value "down"
# slab
execute if predicate microbuilder:held_item_handling/slab run data modify storage microbuilder:calc place.further_processing set value "slab"
execute if predicate microbuilder:held_item_handling/slab run data modify storage microbuilder:calc place.scene_element.block_state.Name set from storage microbuilder:calc place.scene_element.Item.id
# stairs
execute if predicate microbuilder:held_item_handling/stairs run data modify storage microbuilder:calc place.further_processing set value "stairs"
execute if predicate microbuilder:held_item_handling/stairs run data modify storage microbuilder:calc place.scene_element.block_state.Properties set value {facing:"south"}
execute if predicate microbuilder:held_item_handling/stairs run data modify storage microbuilder:calc place.scene_element.block_state.Name set from storage microbuilder:calc place.scene_element.Item.id
execute if predicate microbuilder:held_item_handling/stairs if entity @s[y_rotation=45..135] run data modify storage microbuilder:calc place.scene_element.block_state.Properties.facing set value "west"
execute if predicate microbuilder:held_item_handling/stairs if entity @s[y_rotation=135..225] run data modify storage microbuilder:calc place.scene_element.block_state.Properties.facing set value "north"
execute if predicate microbuilder:held_item_handling/stairs if entity @s[y_rotation=225..315] run data modify storage microbuilder:calc place.scene_element.block_state.Properties.facing set value "east"

execute align x align y align z positioned ~0.5 ~0.5 ~0.5 as @e[type=marker,tag=microbuilder.scene_manager,distance=..0.1,limit=1] run function microbuilder:place/scene_manager_call

execute if data storage microbuilder:calc place{success:1b} run playsound minecraft:block.stone.place block @a[distance=..16] ~ ~ ~ 1 1
execute if data storage microbuilder:calc place{success:1b} if predicate microbuilder:consume_items run function microbuilder:item/decrement_mainhand
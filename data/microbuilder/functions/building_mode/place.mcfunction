execute align x align y align z positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=microbuilder.scene_manager,distance=..0.1] run function microbuilder:place/new_scene_manager

summon marker ~ ~ ~ {Tags:["microbuilder.coordinate_getter"]}
data modify storage microbuilder:calc place set value {success:0b}
data modify storage microbuilder:calc place.Pos set from entity @e[type=marker,tag=microbuilder.coordinate_getter,distance=..0.1,limit=1] Pos
kill @e[type=marker,tag=microbuilder.coordinate_getter,distance=..1]
data modify storage microbuilder:calc place.Item set from entity @s SelectedItem

data modify storage microbuilder:calc item_id set from storage microbuilder:calc place.Item.id
function microbuilder:registry/api/find_index_of_item
execute unless score #index microbuilder.calc matches 0.. run return 0

## scene element
data modify storage microbuilder:calc place.scene_element set value {state:[I;0,0]}
execute store result storage microbuilder:calc place.scene_element.state[0] int 1 run scoreboard players get #index microbuilder.calc

execute align x align y align z positioned ~0.5 ~0.5 ~0.5 as @e[type=marker,tag=microbuilder.scene_manager,distance=..0.1,limit=1] run function microbuilder:place/scene_manager_call

execute if data storage microbuilder:calc place{success:1b} run playsound minecraft:block.stone.place block @a[distance=..16] ~ ~ ~ 1 1
execute if data storage microbuilder:calc place{success:1b} if predicate microbuilder:consume_items run function microbuilder:item/decrement_mainhand
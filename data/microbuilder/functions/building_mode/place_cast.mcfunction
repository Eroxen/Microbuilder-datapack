data modify storage ray2:api params set value {max_distance:4.5d,hit_micro_scene:1b}
execute anchored eyes positioned ^ ^ ^ run function ray2:api/start

execute if data storage ray2:api result{hit:0b} run return 0

scoreboard players operation scale microbuilder.calc = @s microbuilder.scale
data modify storage microbuilder:calc place set value {success:0b}
data modify storage microbuilder:calc place.Item set from entity @s SelectedItem
data modify storage microbuilder:calc item_id set from storage microbuilder:calc place.Item.id
function microbuilder:registry/api/find_index_of_item
execute unless score #index microbuilder.calc matches 0.. run return 0
scoreboard players operation #place.new_block_id microbuilder.calc = #index microbuilder.calc
function microbuilder:math/get_rotation

execute summon marker run function microbuilder:building_mode/place_hit

execute if data storage microbuilder:calc place{success:1b} if predicate microbuilder:consume_items run function microbuilder:item/decrement_mainhand
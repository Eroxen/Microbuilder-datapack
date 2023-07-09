data modify storage ray2:api params set value {max_distance:4.5d,hit_micro_scene:1b}
execute anchored eyes positioned ^ ^ ^ run function ray2:api/start

execute if data storage ray2:api result{hit:0b} run return 0

tag @s add microbuilder.special_item_caster
data modify storage microbuilder:calc special set value {success:0b}
data modify storage microbuilder:calc special.Item set from entity @s SelectedItem

execute summon marker run function microbuilder:building_mode/special_item_hit
tag @s remove microbuilder.special_item_caster
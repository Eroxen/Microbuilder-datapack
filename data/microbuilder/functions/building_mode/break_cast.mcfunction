execute anchored eyes positioned ^ ^ ^ run function ray2:api/start

execute if data storage ray2:api result{hit:0b} run return 0
execute unless data storage ray2:api result{hit_types:["microbuilder:micro_scene"]} run return 0

data modify storage microbuilder:calc break set value {success:0b}

execute summon marker run function microbuilder:building_mode/break_hit

execute if data storage microbuilder:calc break{success:1b} if predicate microbuilder:consume_items if data storage microbuilder:calc break.Item run data modify storage microbuilder:calc Item set from storage microbuilder:calc break.Item 
execute if data storage microbuilder:calc break{success:1b} if predicate microbuilder:consume_items if data storage microbuilder:calc break.Item run function microbuilder:item/give
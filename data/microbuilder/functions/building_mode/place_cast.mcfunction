execute anchored eyes positioned ^ ^ ^ run function ray2:api/start

execute if data storage ray2:api result{hit:0b} run return 0

scoreboard players operation scale microbuilder.calc = @s microbuilder.scale
data modify storage microbuilder:calc place set value {success:0b}
data modify storage microbuilder:calc place.Item set from entity @s SelectedItem

execute summon marker run function microbuilder:building_mode/place_hit

execute if data storage microbuilder:calc place{success:1b} run playsound minecraft:block.stone.place block @a[distance=..16] ~ ~ ~ 1 1
execute if data storage microbuilder:calc place{success:1b} if predicate microbuilder:consume_items run function microbuilder:item/decrement_mainhand
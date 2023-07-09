execute if data storage ray2:api result.normal{axis:"y",sign:1} run scoreboard players set #place.state microbuilder.calc 0
execute if data storage ray2:api result.normal{axis:"y",sign:-1} run scoreboard players set #place.state microbuilder.calc 8
execute if data storage microbuilder:calc math.rotation.inverse{horizontal:"north"} run scoreboard players add #place.state microbuilder.calc 0
execute if data storage microbuilder:calc math.rotation.inverse{horizontal:"south"} run scoreboard players add #place.state microbuilder.calc 1
execute if data storage microbuilder:calc math.rotation.inverse{horizontal:"west"} run scoreboard players add #place.state microbuilder.calc 2
execute if data storage microbuilder:calc math.rotation.inverse{horizontal:"east"} run scoreboard players add #place.state microbuilder.calc 3

execute if data storage ray2:api result.normal{axis:"x",sign:-1} run scoreboard players set #place.state microbuilder.calc 6
execute if data storage ray2:api result.normal{axis:"x",sign:1} run scoreboard players set #place.state microbuilder.calc 7
execute if data storage ray2:api result.normal{axis:"z",sign:-1} run scoreboard players set #place.state microbuilder.calc 4
execute if data storage ray2:api result.normal{axis:"z",sign:1} run scoreboard players set #place.state microbuilder.calc 5
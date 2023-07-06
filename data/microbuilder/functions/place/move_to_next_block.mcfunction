execute if data storage ray2:api result.normal{axis:"x"} store result score #place.shift microbuilder.calc run data get storage microbuilder:calc place.Pos[0] 1000
execute if data storage ray2:api result.normal{axis:"y"} store result score #place.shift microbuilder.calc run data get storage microbuilder:calc place.Pos[1] 1000
execute if data storage ray2:api result.normal{axis:"z"} store result score #place.shift microbuilder.calc run data get storage microbuilder:calc place.Pos[2] 1000
execute if data storage ray2:api result.normal{axis:"x"} store result score #place.block microbuilder.calc run data get storage ray2:api result.block[0] 1000
execute if data storage ray2:api result.normal{axis:"y"} store result score #place.block microbuilder.calc run data get storage ray2:api result.block[1] 1000
execute if data storage ray2:api result.normal{axis:"z"} store result score #place.block microbuilder.calc run data get storage ray2:api result.block[2] 1000

execute if data storage ray2:api result.normal{sign:-1} run scoreboard players add #place.shift microbuilder.calc 10
execute if data storage ray2:api result.normal{sign:1} run scoreboard players remove #place.shift microbuilder.calc 10
scoreboard players operation #place.shift microbuilder.calc -= #place.block microbuilder.calc
scoreboard players operation #place.shift microbuilder.calc *= scale microbuilder.calc
scoreboard players operation #place.shift microbuilder.calc /= #1000 microbuilder.calc

execute if data storage ray2:api result.normal{sign:1} run scoreboard players add #place.shift microbuilder.calc 1
scoreboard players operation #place.shift microbuilder.calc *= #1000 microbuilder.calc
scoreboard players operation #place.shift microbuilder.calc /= scale microbuilder.calc
scoreboard players operation #place.shift microbuilder.calc += #place.block microbuilder.calc
execute if data storage ray2:api result.normal{sign:-1} run scoreboard players remove #place.shift microbuilder.calc 5
execute if data storage ray2:api result.normal{sign:1} run scoreboard players add #place.shift microbuilder.calc 5
execute if data storage ray2:api result.normal{axis:"x"} store result storage microbuilder:calc place.Pos[0] double 0.001 run scoreboard players get #place.shift microbuilder.calc
execute if data storage ray2:api result.normal{axis:"y"} store result storage microbuilder:calc place.Pos[1] double 0.001 run scoreboard players get #place.shift microbuilder.calc
execute if data storage ray2:api result.normal{axis:"z"} store result storage microbuilder:calc place.Pos[2] double 0.001 run scoreboard players get #place.shift microbuilder.calc
data modify entity @s Pos set from storage microbuilder:calc place.Pos
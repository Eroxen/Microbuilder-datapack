data modify storage microbuilder:calc math.ray2.l_1 set from entity @s Pos
tp @s ~ ~ ~
data modify storage microbuilder:calc math.ray2.l_0 set from entity @s Pos
data modify storage microbuilder:calc math.ray2.l set value [0d,0d,0d]

execute store result score l_0_x microbuilder.calc run data get storage microbuilder:calc math.ray2.l_0[0] 1000
execute store result score l_0_y microbuilder.calc run data get storage microbuilder:calc math.ray2.l_0[1] 1000
execute store result score l_0_z microbuilder.calc run data get storage microbuilder:calc math.ray2.l_0[2] 1000
execute store result score l_1_x microbuilder.calc run data get storage microbuilder:calc math.ray2.l_1[0] 1000
execute store result score l_1_y microbuilder.calc run data get storage microbuilder:calc math.ray2.l_1[1] 1000
execute store result score l_1_z microbuilder.calc run data get storage microbuilder:calc math.ray2.l_1[2] 1000
scoreboard players operation l_x microbuilder.calc = l_1_x microbuilder.calc
scoreboard players operation l_y microbuilder.calc = l_1_y microbuilder.calc
scoreboard players operation l_z microbuilder.calc = l_1_z microbuilder.calc
scoreboard players operation l_x microbuilder.calc -= l_0_x microbuilder.calc
scoreboard players operation l_y microbuilder.calc -= l_0_y microbuilder.calc
scoreboard players operation l_z microbuilder.calc -= l_0_z microbuilder.calc
execute store result storage microbuilder:calc math.ray2.l[0] double 0.001 run scoreboard players get l_x microbuilder.calc
execute store result storage microbuilder:calc math.ray2.l[1] double 0.001 run scoreboard players get l_y microbuilder.calc
execute store result storage microbuilder:calc math.ray2.l[2] double 0.001 run scoreboard players get l_z microbuilder.calc

data modify storage microbuilder:calc math.ray2.direction set value [-1,-1,-1]
execute if score l_x microbuilder.calc matches 1.. run data modify storage microbuilder:calc math.ray2.direction[0] set value 1
execute if score l_y microbuilder.calc matches 1.. run data modify storage microbuilder:calc math.ray2.direction[1] set value 1
execute if score l_z microbuilder.calc matches 1.. run data modify storage microbuilder:calc math.ray2.direction[2] set value 1
execute store result score d_x microbuilder.calc run data get storage microbuilder:calc math.ray2.direction[0] 1
execute store result score d_y microbuilder.calc run data get storage microbuilder:calc math.ray2.direction[1] 1
execute store result score d_z microbuilder.calc run data get storage microbuilder:calc math.ray2.direction[2] 1

data modify storage microbuilder:calc math.ray2.next_edge set value [0,0,0]
execute if score d_x microbuilder.calc matches 1 run data modify storage microbuilder:calc math.ray2.next_edge[0] set value 1
execute if score d_y microbuilder.calc matches 1 run data modify storage microbuilder:calc math.ray2.next_edge[1] set value 1
execute if score d_z microbuilder.calc matches 1 run data modify storage microbuilder:calc math.ray2.next_edge[2] set value 1
execute store result score next_edge_x microbuilder.calc run data get storage microbuilder:calc math.ray2.next_edge[0] 1
execute store result score next_edge_y microbuilder.calc run data get storage microbuilder:calc math.ray2.next_edge[1] 1
execute store result score next_edge_z microbuilder.calc run data get storage microbuilder:calc math.ray2.next_edge[2] 1

execute store result score block_x microbuilder.calc run data get storage microbuilder:calc math.ray2.l_0[0] 1
execute store result score block_y microbuilder.calc run data get storage microbuilder:calc math.ray2.l_0[1] 1
execute store result score block_z microbuilder.calc run data get storage microbuilder:calc math.ray2.l_0[2] 1

scoreboard players operation precise_x microbuilder.calc = l_0_x microbuilder.calc
scoreboard players operation precise_y microbuilder.calc = l_0_y microbuilder.calc
scoreboard players operation precise_z microbuilder.calc = l_0_z microbuilder.calc

data modify storage microbuilder:calc math.ray2.crossings set value []

scoreboard players set precision microbuilder.calc 1000
scoreboard players set d_min microbuilder.calc 0


execute at @s positioned ^ ^ ^ align x align y align z positioned ~0.5 ~0.5 ~0.5 run function microbuilder:math/ray2/scan_current_block

execute if data storage microbuilder:calc math.ray2{stop:1b} at @s run function microbuilder:math/ray2/stop
execute if data storage microbuilder:calc math.ray2{stop:0b} run function microbuilder:math/ray2/loop
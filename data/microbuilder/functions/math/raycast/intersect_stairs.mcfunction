execute if block ~ ~ ~ #minecraft:stairs[half=bottom] if score y microbuilder.calc matches ..7 run tag @s add microbuilder.math.raycast.hit
execute if block ~ ~ ~ #minecraft:stairs[half=top] if score y microbuilder.calc matches 8.. run tag @s add microbuilder.math.raycast.hit

execute if block ~ ~ ~ #minecraft:stairs[shape=straight] if score z microbuilder.calc matches ..7 run tag @s add microbuilder.math.raycast.hit
execute if block ~ ~ ~ #minecraft:stairs[shape=inner_left] if score z microbuilder.calc matches ..7 run tag @s add microbuilder.math.raycast.hit
execute if block ~ ~ ~ #minecraft:stairs[shape=inner_right] if score z microbuilder.calc matches ..7 run tag @s add microbuilder.math.raycast.hit

execute if block ~ ~ ~ #minecraft:stairs[shape=outer_left] if score z microbuilder.calc matches ..7 if score x microbuilder.calc matches ..7 run tag @s add microbuilder.math.raycast.hit
execute if block ~ ~ ~ #minecraft:stairs[shape=outer_right] if score z microbuilder.calc matches ..7 if score x microbuilder.calc matches 8.. run tag @s add microbuilder.math.raycast.hit
execute if block ~ ~ ~ #minecraft:stairs[shape=inner_left] if score z microbuilder.calc matches 8.. if score x microbuilder.calc matches ..7 run tag @s add microbuilder.math.raycast.hit
execute if block ~ ~ ~ #minecraft:stairs[shape=inner_right] if score z microbuilder.calc matches 8.. if score x microbuilder.calc matches 8.. run tag @s add microbuilder.math.raycast.hit
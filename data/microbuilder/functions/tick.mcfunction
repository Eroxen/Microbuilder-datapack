# Triggers
scoreboard players enable @a microbuilder
scoreboard players enable @a microbuilder.scale

scoreboard players set @a[scores={microbuilder.scale=0}] microbuilder.scale 4
execute as @a[scores={microbuilder=1..}] at @s run function microbuilder:trigger/microbuilder
execute as @a[scores={microbuilder.scale=..1}] at @s run function microbuilder:trigger/scale
execute as @a[scores={microbuilder.scale=17..}] at @s run function microbuilder:trigger/scale

# Building mode
execute if entity @a[tag=microbuilder.is_in_building_mode] run function microbuilder:building_mode/players_exist
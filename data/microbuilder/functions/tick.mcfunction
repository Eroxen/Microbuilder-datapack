# Bossbars
bossbar add microbuilder:building_mode "[/trigger microbuilder] to exit Micro Building Mode"
bossbar set microbuilder:building_mode visible true


# Triggers
scoreboard players enable @a microbuilder
scoreboard players enable @a microbuilder.scale

scoreboard players set @a[scores={microbuilder.scale=0}] microbuilder.scale 4
execute as @a[scores={microbuilder=1..}] at @s run function microbuilder:trigger/microbuilder
execute as @a[scores={microbuilder.scale=..1}] at @s run function microbuilder:trigger/scale
execute as @a[scores={microbuilder.scale=17..}] at @s run function microbuilder:trigger/scale


#
execute if entity @a[tag=microbuilder.is_in_building_mode] run function microbuilder:building_mode/players_exist
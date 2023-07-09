# Bossbars
bossbar add microbuilder:building_mode "[/trigger microbuilder] to exit Micro Building Mode"
bossbar set microbuilder:building_mode visible true

# Scoreboard objectives
scoreboard objectives add microbuilder trigger
scoreboard objectives add microbuilder.calc dummy
scoreboard objectives add microbuilder.settings dummy
scoreboard objectives add microbuilder.message minecraft.custom:minecraft.leave_game
scoreboard objectives add microbuilder.scale trigger
scoreboard objectives add microbuilder.render_pos dummy

scoreboard players set #1000 microbuilder.calc 1000

# Registry
function microbuilder:registry/load

# Config
execute unless score consume_items microbuilder.settings matches 0..1 run scoreboard players set consume_items microbuilder.settings 1
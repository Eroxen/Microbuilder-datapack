scoreboard objectives add microbuilder trigger
scoreboard objectives add microbuilder.calc dummy
scoreboard objectives add microbuilder.settings dummy
scoreboard objectives add microbuilder.message minecraft.custom:minecraft.leave_game
scoreboard objectives add microbuilder.scale trigger
scoreboard objectives add microbuilder.render_pos dummy

function microbuilder:registry/load

execute unless score consume_items microbuilder.settings matches 0..1 run scoreboard players set consume_items microbuilder.settings 1
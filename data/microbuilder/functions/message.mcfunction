scoreboard players set @s microbuilder.message 0

tellraw @s {"text":"========================","color":"yellow"}
tellraw @s {"text":"Microbuilder v1.0 by Eroxen","color":"light_purple"}
tellraw @s {"text":"Thank you for installing Microbuilder! You can find more information about the pack and updates on \n","color":"green","extra":[{"text":"download page","color":"aqua","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"planetminecraft.com"}]},"clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/data-pack/microbuilder/"}}]}
tellraw @s {"text":"/trigger microbuilder","color":"white"}
tellraw @s {"text":"→ Toggle Micro Building Mode","color":"gray"}
tellraw @s {"text":"/trigger microbuilder.scale set [value]","color":"white"}
tellraw @s {"text":"→ Change building scale","color":"gray"}
tellraw @s {"text":"========================","color":"yellow"}
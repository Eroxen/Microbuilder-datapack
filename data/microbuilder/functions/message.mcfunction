scoreboard players set @s microbuilder.message 0

tellraw @s {"text":"========================","color":"yellow"}
tellraw @s {"text":"Microbuilder v0.3 by Eroxen","color":"light_purple"}
tellraw @s {"text":"This pack is in a pre-release\nstage, so please check the\n","color":"green","extra":[{"text":"download page","color":"aqua","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"planetminecraft.com"}]},"clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/data-pack/microbuilder/"}},{"text":" for updates!","color":"green"}]}
tellraw @s {"text":"/trigger microbuilder","color":"white"}
tellraw @s {"text":"→ Toggle Micro Building Mode","color":"gray"}
tellraw @s {"text":"/trigger microbuilder.scale set [value]","color":"white"}
tellraw @s {"text":"→ Change building scale","color":"gray"}
tellraw @s {"text":"========================","color":"yellow"}
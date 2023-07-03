bossbar set microbuilder:building_mode players @a[tag=microbuilder.is_in_building_mode]
kill @e[type=interaction,tag=microbuilder.building_mode_hitbox]
advancement revoke @a only microbuilder:trigger/right_click_building_mode
advancement revoke @a only microbuilder:trigger/left_click_building_mode
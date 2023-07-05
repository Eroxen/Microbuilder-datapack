function ray2:api/start
execute if data storage ray2:api result{hit:0b} run return 0
execute summon marker run function ray2:test/particle_at_hitpoint
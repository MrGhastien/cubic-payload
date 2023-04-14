summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"flame",Radius:2.5f,RadiusPerTick:0f,Duration:201,Tags:["molotov_flame"]}
particle minecraft:flame ~ ~ ~ 1 0 1 0.1 100
playsound minecraft:item.firecharge.use ambient @a ~ ~ ~
playsound minecraft:block.glass.break ambient @a ~ ~ ~
fill ~2 ~2 ~2 ~-2 ~-2 ~-2 fire[age=3] keep
kill @s
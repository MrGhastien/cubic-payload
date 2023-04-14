execute if entity @s[tag=red] run summon minecraft:creeper ~ ~ ~ {Team:"red",Fuse:0,ExplosionRadius:1s}
execute if entity @s[tag=blue] run summon minecraft:creeper ~ ~ ~ {Team:"blue",Fuse:0,ExplosionRadius:1s}
execute if entity @s[tag=red] run effect give @e[distance=..1.5,team=red] resistance 3 1 true
kill @s
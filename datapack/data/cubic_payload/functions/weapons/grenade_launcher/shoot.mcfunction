execute if entity @s[team=red] run summon minecraft:item ~ ~1 ~ {Age:-32768,PickupDelay:32767,Tags:["pipe","init","red"],Item:{id:"minecraft:red_concrete",Count:1b},Invulnerable:1}
execute if entity @s[team=blue] run summon minecraft:item ~ ~1 ~ {Age:-32768,PickupDelay:32767,Tags:["pipe","init","blue"],Item:{id:"minecraft:blue_concrete",Count:1b},Invulnerable:1}

tp @e[type=item,tag=pipe,tag=init,limit=1,sort=nearest] @s
tp @e[type=item,tag=pipe,tag=init,limit=1,sort=nearest] ~ ~1.35 ~

execute as @e[type=item,tag=pipe,limit=1,sort=nearest,tag=init] at @s run function cubic_payload:weapons/grenade_launcher/launch
scoreboard players reset @s rc
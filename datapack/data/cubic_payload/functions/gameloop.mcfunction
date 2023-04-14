function cubic_payload:payload/cart
function cubic_payload:weapons/weapon_tick
function cubic_payload:clock

execute as @e[type=arrow] at @s run data merge entity @s {NoGravity:1b}

effect give @a minecraft:saturation 99999 255 true

execute store result bossbar minecraft:time value run scoreboard players get totalSec temps
execute store result bossbar minecraft:lol value run scoreboard players get distance display
execute as @a[tag=spy] if data storage cubic_payload:state {Setup:0b} run title @s actionbar [{"text":"Cloak : ","color":"blue"},{"score":{"name":"@s","objective":"cloak"},"color":"dark_blue"},{"text":" %","color":"blue"}]
execute as @a[tag=spy] if data storage cubic_payload:state {Setup:1b} run title @s actionbar [{"text":"Cloak : ","color":"blue"},{"score":{"name":"@s","objective":"cloak"},"color":"dark_blue"},{"text":" %","color":"blue"}]

execute as @a[tag=reloading] run title @s actionbar {"text":"Rechargement...","color":"red"}

kill @e[type=arrow,nbt={CustomPotionEffects:[{Id:7b,Amplifier:100b,Duration:1,ShowParticles:0b}]}]
kill @e[type=arrow,nbt={inGround:1b}]

#kill @e[type=item,nbt=!{Item:{tag:{Mine:1}}},tag=!pipe,nbt=!{Item:{tag:{Molotov:1}}}]

execute as @a[x=-167,y=64,z=13,dx=0,dy=0,dz=0,team=blue] at @s run spawnpoint @s -42 65 -129
execute as @a[x=-167,y=64,z=13,dx=0,dy=0,dz=0,team=blue] at @s run tp @s -42 65 -129

execute as @a[x=-167,y=64,z=13,dx=0,dy=0,dz=0,team=red] at @s run spawnpoint @s -63 59 8
execute as @a[x=-167,y=64,z=13,dx=0,dy=0,dz=0,team=red] at @s run tp @s -63 59 8

execute as @a[x=-167,y=64,z=13,dx=0,dy=0,dz=0] at @s run gamemode adventure @s

execute store result score grenades mine run execute if entity @e[type=item,tag=pipe]

execute as @a[tag=!spy] at @s run tag @s remove cloaked
execute as @a[tag=!spy] at @s run effect clear @s invisibility

effect give @a[tag=medic] regeneration 1 0 true

stopsound @a * minecraft:item.crossbow.shoot

#Spawnroom visualizers
execute if data storage cubic_payload:state {Setup:0b} as @e[type=armor_stand,tag=visualizer,tag=red] at @s run tp @a[distance=..1,team=blue] -42 65 -129
execute if data storage cubic_payload:state {Setup:0b} as @e[type=armor_stand,tag=visualizer,tag=blue] at @s run tp @a[distance=..1,team=red] -63 59 8
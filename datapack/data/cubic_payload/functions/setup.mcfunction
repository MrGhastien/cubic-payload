data merge storage cubic_payload:state {Setup:1b}
data merge storage cubic_payload:state {Finished:0b}

tellraw @p {"text":"Cubic Payload V 0.0.1 by MrGhastien"}

tellraw @p {"text":"[Red Ressuply Locker]","color":"red","clickEvent":{"action":"run_command","value":"/give @p minecraft:squid_spawn_egg{display:{Name:\"{\\\"text\\\":\\\"Ressuply Locker Red\\\"}\"},EntityTag:{id:\"minecraft:armor_stand\",Team:\"red\",Tags:[\"res_lock\",\"red\"],Invulnerable:1b,Invisible:1b,Marker:1b,CustomName:\"{\\\"text\\\":\\\"Ressuply Locker Red\\\"}\"}} 1"}}

tellraw @p {"text":"[Blue Ressuply Locker]","color":"aqua","clickEvent":{"action":"run_command","value":"/give @p minecraft:squid_spawn_egg{display:{Name:\"{\\\"text\\\":\\\"Ressuply Locker Blue\\\"}\"},EntityTag:{id:\"minecraft:armor_stand\",Team:\"blue\",Tags:[\"res_lock\",\"blue\"],Invulnerable:1b,Invisible:1b,Marker:1b,CustomName:\"{\\\"text\\\":\\\"Ressuply Locker Blue\\\"}\"}} 1"}}

bossbar set minecraft:lol players @a
bossbar set minecraft:time players @a
bossbar set minecraft:time color red

scoreboard players set sec temps 10
scoreboard players set totalSec temps 70
scoreboard players set minute temps 1
execute store result bossbar minecraft:time max run scoreboard players get totalSec temps
execute if score totalSec temps matches 1.. unless block ^ ^ ^1 rail unless block ^ ^ ^1 detector_rail run scoreboard players set distance display 511

schedule function cubic_payload:timer 1s

title @a times 5 30 5

scoreboard players set next cp 0

fill 35 61 -145 35 61 -144 red_concrete
fill 35 62 -145 35 62 -144 detector_rail[shape=east_west]
setblock 41 63 -33 minecraft:red_concrete
setblock 41 64 -33 detector_rail[shape=north_south]
setblock -41 63 -9 minecraft:red_concrete
setblock -41 63 -9 detector_rail[shape=north_south]

data merge block 35 60 -144 {Text1:'{"storage":"cubic_payload:cp","nbt":"CapturePoints[0].name","color":"red","bold":true}',Text2:'{"text":"[ROUGE]","color":"red"}'}
data merge block 41 62 -33 {Text1:'{"storage":"cubic_payload:cp","nbt":"CapturePoints[1].name","color":"red","bold":true}',Text2:'{"text":"[ROUGE]","color":"red"}'}
data merge block -41 62 -9 {Text1:'{"storage":"cubic_payload:cp","nbt":"CapturePoints[2].name","color":"red","bold":true}',Text2:'{"text":"[ROUGE]","color":"red"}'}

kill @e[type=armor_stand,tag=cp]
kill @e[type=armor_stand,tag=visualizer]
kill @e[type=armor_stand,tag=mount_obstructor]

summon minecraft:armor_stand 35 64 -144.0 {Marker:1b,Invunlerable:1,Invisible:1,CustomNameVisible:1,Tags:["cp","id0"]}
summon minecraft:armor_stand 35 63.7 -144.0 {Marker:1b,Invunlerable:1,Invisible:1,CustomNameVisible:1,Tags:["cp","id0","subtitle"]}

summon minecraft:armor_stand 41 66 -33 {Marker:1b,Invunlerable:1,Invisible:1,CustomNameVisible:1,Tags:["cp","id0"]}
summon minecraft:armor_stand 41 65.7 -33 {Marker:1b,Invunlerable:1,Invisible:1,CustomNameVisible:1,Tags:["cp","id0","subtitle"]}

summon minecraft:armor_stand -41 66 -9 {Marker:1b,Invunlerable:1,Invisible:1,CustomNameVisible:1,Tags:["cp","id0"]}
summon minecraft:armor_stand -41 65.7 -9 {Marker:1b,Invunlerable:1,Invisible:1,CustomNameVisible:1,Tags:["cp","id0","subtitle"]}

kill @e[tag=payload]

summon minecraft:minecart -44 65 -132 {Glowing:1b,Invulnerable:1b,Team:"Blue Payload",Tags:["payload","go_west"],CustomDisplayTile:1b,DisplayOffset:6,DisplayState:{Name:"minecraft:tnt"},Passengers:[{id:"minecraft:armor_stand",Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["mount_obstructor"]}]}
#Armor stand passenger to prevent players from hopping into the minecart
team join blue_payload @e[tag=payload]

function cubic_payload:payload/cp
function cubic_payload:weapons/cloaker/cloak_meter_recharge
function cubic_payload:weapons/cloaker/cloak_meter_discharge

fill -52 64 -131 -52 66 -133 minecraft:iron_bars[north=true,south=true]
fill -20 66 -125 -20 64 -123 minecraft:iron_bars[north=true,south=true]

summon minecraft:armor_stand -52 64 -132 {Marker:1,Invisible:1,Invulnerable:1,Tags:["visualizer","blue"]}
summon minecraft:armor_stand -20 64 -124 {Marker:1,Invisible:1,Invulnerable:1,Tags:["visualizer","blue"]}

summon minecraft:armor_stand -38 63 -8 {Marker:1,Invisible:1,Invulnerable:1,Tags:["visualizer","red"]}
summon minecraft:armor_stand -44 63 -8 {Marker:1,Invisible:1,Invulnerable:1,Tags:["visualizer","red"]}
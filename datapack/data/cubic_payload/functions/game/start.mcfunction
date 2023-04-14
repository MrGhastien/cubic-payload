fill -52 64 -131 -52 66 -133 air
setblock -52 64 -132 rail
fill -20 66 -125 -20 64 -123 minecraft:air

bossbar set minecraft:time color green

data merge storage cubic_payload:state {Setup:0b}

tellraw @a[team=blue] {"text":"Temps de préparation terminé, placez-vous proche du wagon pour le faire avancer et capturer les points !","color":"aqua"}
tellraw @a[team=red] {"text":"Temps de préparation terminé, empêchez le wagon d'avancer en tuant les adversaires ou en vous tenant à côté du wagon !","color":"red"}

scoreboard players set sec temps 30
scoreboard players set totalSec temps 270
scoreboard players set minute temps 4
execute store result bossbar minecraft:time max run scoreboard players get totalSec temps

schedule function cubic_payload:timer 1s
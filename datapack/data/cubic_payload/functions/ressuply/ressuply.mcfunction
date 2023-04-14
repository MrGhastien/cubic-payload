#Fonction pour redonner de la vie
execute as @a[distance=0..3,team=red] at @s run effect give @s minecraft:regeneration 3 255 true
execute as @a[distance=0..3,team=red] at @s run tellraw @s {"text":"Ressuplied !", "color":"light_purple"}

execute as @a[distance=0..3,team=blue] at @s run effect give @s minecraft:regeneration 3 255 true
execute as @a[distance=0..3,team=blue] at @s run tellraw @s {"text":"Ressuplied !", "color":"light_purple"}

execute as @a[distance=0..3,tag=sniper] at @s run function cubic_payload:game/lobby/class_sniper
execute as @a[distance=0..3,tag=demoman] at @s run function cubic_payload:game/lobby/class_demo
execute as @a[distance=0..3,tag=pyro] at @s run function cubic_payload:game/lobby/class_pyro
execute as @a[distance=0..3,tag=medic] at @s run function cubic_payload:game/lobby/class_medic
execute as @a[distance=0..3,tag=soldier] at @s run function cubic_payload:game/lobby/class_soldier
execute as @a[distance=0..3,tag=spy] at @s run function cubic_payload:game/lobby/class_spy
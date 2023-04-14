execute if entity @s[team=red] as @e[dx=0,tag=!this,team=!red] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run execute at @s run function cubic_payload:weapons/flamethrower/hit
execute if entity @s[team=blue] as @e[dx=0,tag=!this,team=!blue] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run execute at @s run function cubic_payload:weapons/flamethrower/hit
particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.01 2
execute positioned ^ ^ ^0.25 if block ~ ~ ~ #cubic_payload:crossable if entity @s[distance=..6.5] run function cubic_payload:weapons/flamethrower/shoot_raycast
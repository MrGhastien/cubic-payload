particle minecraft:mycelium ~ ~ ~ 0 0 0 0.01 1
execute if entity @s[team=blue] as @e[dx=0,tag=!this,team=!blue] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run function cubic_payload:weapons/rifle/hit
execute if entity @s[team=red] as @e[dx=0,tag=!this,team=!red] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run function cubic_payload:weapons/rifle/hit
execute positioned ^ ^ ^0.25 if entity @s[distance=..30] unless entity @e[tag=hit,tag=!this,distance=..2] if block ~ ~ ~ #cubic_payload:crossable run function cubic_payload:weapons/rifle/shoot_raycast

execute unless block ^ ^ ^0.25 #cubic_payload:crossable run particle minecraft:crit ~ ~ ~ 0 0 0 .3 10
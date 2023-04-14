execute if entity @s[team=blue] run particle minecraft:entity_effect ~ ~ ~ 0.3 0.3 1 1 0
execute if entity @s[team=red] run particle minecraft:entity_effect ~ ~ ~ 1 0.3 0.3 1 0
execute as @e[dx=0,tag=!this,team=blue] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run effect give @s regeneration 3 2
execute as @e[dx=0,tag=!this,team=red] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run effect give @s regeneration 3 2
execute positioned ^ ^ ^0.25 if block ~ ~ ~ #cubic_payload:crossable if entity @s[distance=..10] run function cubic_payload:weapons/medigun/shoot_raycast
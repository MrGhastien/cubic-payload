execute if entity @s[team=red] run particle dust 1.000 0.000 0.000 2 ~ ~ ~ 0 0 0 1 1 force
execute if entity @s[team=blue] run particle dust 0.000 0.000 1.000 2 ~ ~ ~ 0 0 0 1 1 force

execute if entity @s[team=blue] as @e[dx=0,tag=!this,team=!blue] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run function cubic_payload:weapons/sniper/hit
execute if entity @s[team=red] as @e[dx=0,tag=!this,team=!red] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run function cubic_payload:weapons/sniper/hit

execute positioned ^ ^ ^0.25 if entity @s[distance=..150] if block ~ ~ ~ #cubic_payload:crossable run function cubic_payload:weapons/sniper/raycast

execute unless block ^ ^ ^0.25 #cubic_payload:crossable run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.3 150 force

scoreboard players set @s shoot 0
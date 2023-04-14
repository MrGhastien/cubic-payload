execute if entity @s[team=red] run particle minecraft:dust 1 0 0 1 ~ ~1 ~ 0.25 .4 .25 0 2
execute if entity @s[team=blue] run particle minecraft:dust 0 0 1 1 ~ ~1 ~ 0.25 .4 .25 0 2

scoreboard players add @s cloak_effect 1
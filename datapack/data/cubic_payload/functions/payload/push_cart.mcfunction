execute as @e[tag=payload,tag=go_west] at @s run data merge entity @s {Motion:[-0.1, 0.0, 0.0]}
execute as @e[tag=payload,tag=go_east] at @s run data merge entity @s {Motion:[.1, 0.0, 0.0]}
execute as @e[tag=payload,tag=go_north] at @s run data merge entity @s {Motion:[0.0, 0.0, -0.1]}
execute as @e[tag=payload,tag=go_south] at @s run data merge entity @s {Motion:[0.0, 0.0, .1]}
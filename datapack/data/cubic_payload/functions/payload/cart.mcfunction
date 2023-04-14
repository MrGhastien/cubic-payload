execute as @e[type=minecart,tag=payload] at @s if entity @a[distance=..1.5,team=blue,tag=!cloaked] unless entity @a[distance=..1.5,team=red,tag=!cloaked] if data storage cubic_payload:state {Finished:0b,Setup:0b} run function cubic_payload:payload/push_cart

execute as @e[type=minecart,tag=payload] at @s if entity @a[distance=..1.5,team=red,tag=!cloaked] if entity @a[distance=..1.5,team=blue,tag=!cloaked] run data merge entity @e[type=minecart,tag=payload,limit=1] {Motion:[0.0, 0.0, 0.0]}

execute as @e[type=minecart,tag=payload] at @s unless entity @a[distance=..1.5,team=blue,tag=!cloaked] run data merge entity @e[type=minecart,tag=payload,limit=1] {Motion:[0.0, 0.0, 0.0]}

execute as @e[type=minecart,tag=payload,predicate=cubic_payload:onpoint] at @s run function cubic_payload:payload/capture

execute as @e[type=minecart,tag=payload,tag=go_south] at @s if block ~ ~ ~ rail[shape=north_east] run tag @s add go_east
execute as @e[type=minecart,tag=payload,tag=go_south] at @s if block ~ ~ ~ rail[shape=north_east] run tag @s remove go_south

execute as @e[type=minecart,tag=payload,tag=go_west] at @s if block ~ ~ ~ rail[shape=north_east] run tag @s add go_north
execute as @e[type=minecart,tag=payload,tag=go_west] at @s if block ~ ~ ~ rail[shape=north_east] run tag @s remove go_west

execute as @e[type=minecart,tag=payload,tag=go_south] at @s if block ~ ~ ~ rail[shape=north_west] run tag @s add go_west
execute as @e[type=minecart,tag=payload,tag=go_south] at @s if block ~ ~ ~ rail[shape=north_west] run tag @s remove go_south

execute as @e[type=minecart,tag=payload,tag=go_east] at @s if block ~ ~ ~ rail[shape=north_west] run tag @s add go_north
execute as @e[type=minecart,tag=payload,tag=go_east] at @s if block ~ ~ ~ rail[shape=north_west] run tag @s remove go_east

execute as @e[type=minecart,tag=payload,tag=go_north] at @s if block ~ ~ ~ rail[shape=south_east] run tag @s add go_east
execute as @e[type=minecart,tag=payload,tag=go_north] at @s if block ~ ~ ~ rail[shape=south_east] run tag @s remove go_north

execute as @e[type=minecart,tag=payload,tag=go_west] at @s if block ~ ~ ~ rail[shape=south_east] run tag @s add go_south
execute as @e[type=minecart,tag=payload,tag=go_west] at @s if block ~ ~ ~ rail[shape=south_east] run tag @s remove go_west

execute as @e[type=minecart,tag=payload,tag=go_north] at @s if block ~ ~ ~ rail[shape=south_west] run tag @s add go_west
execute as @e[type=minecart,tag=payload,tag=go_north] at @s if block ~ ~ ~ rail[shape=south_west] run tag @s remove go_north

execute as @e[type=minecart,tag=payload,tag=go_east] at @s if block ~ ~ ~ rail[shape=south_west] run tag @s add go_south
execute as @e[type=minecart,tag=payload,tag=go_east] at @s if block ~ ~ ~ rail[shape=south_west] run tag @s remove go_east
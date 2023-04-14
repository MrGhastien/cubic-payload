tag @s add this
playsound minecraft:block.fire.extinguish ambient @a ~ ~ ~ 0.25 1.2
execute anchored eyes run function cubic_payload:weapons/medigun/shoot_raycast
scoreboard players reset @s rc
tag @s remove this
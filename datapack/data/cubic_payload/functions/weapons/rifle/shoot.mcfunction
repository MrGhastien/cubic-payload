tag @s add this
playsound minecraft:block.note_block.basedrum ambient @a ~ ~ ~ 1 2
execute anchored eyes positioned ^-0.07 ^-0.05 ^ rotated ~-0.5 ~ run function cubic_payload:weapons/rifle/shoot_raycast
scoreboard players reset @s rc
tag @s remove this
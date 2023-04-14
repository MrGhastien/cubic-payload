scoreboard players reset @s mine
data merge entity @s {Age:-32768,PickupDelay:32767,Invulnerable:1}
playsound minecraft:block.piston.contract ambient @a ~ ~ ~ 1 1.5
tag @s add mine
execute if entity @s[team=blue] run tag @s add blue
execute if entity @s[team=red] run tag @s add red
scoreboard players set @s turret_cooldown 0
tag @s add this
playsound cubic_payload:weapons.turret.shoot ambient @a ~ ~ ~ 1 2
execute anchored eyes positioned ^-0.07 ^-0.05 ^ rotated ~-0.5 ~ run function cubic_payload:weapons/turret/shoot_raycast
scoreboard players reset @s rc
tag @s remove this

scoreboard players reset @s turret_cooldown
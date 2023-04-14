execute if entity @s[team=red] run playsound cubic_payload:weapons.sniper.shoot.red ambient @a ~ ~ ~
execute if entity @s[team=blue] run playsound cubic_payload:weapons.sniper.shoot.blue ambient @a ~ ~ ~
tag @s add this
execute anchored eyes run function cubic_payload:weapons/sniper/raycast
scoreboard players reset @s shoot
tag @s remove this

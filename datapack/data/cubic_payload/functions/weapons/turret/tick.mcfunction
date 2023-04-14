execute if entity @s[tag=!active] run function cubic_payload:weapons/turret/activate
tp @s[team=red] ~ ~ ~ facing entity @e[sort=nearest,limit=1,distance=0.5..10,team=blue]
tp @s[team=blue] ~ ~ ~ facing entity @e[sort=nearest,limit=1,distance=0.5..10,team=red]

scoreboard players add @s turret_cooldown 1

execute if score @s turret_cooldown matches 2.. run function cubic_payload:weapons/turret/shoot

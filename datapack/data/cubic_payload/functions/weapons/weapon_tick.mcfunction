function cubic_payload:weapons/item_check
execute as @a run function cubic_payload:weapons/ammo/ammo

execute as @e[type=item,nbt={Item:{tag:{Molotov:1}},OnGround:1b}] at @s run function cubic_payload:weapons/molotov/molotov_kill
execute as @e[type=area_effect_cloud,tag=molotov_flame] at @s run execute as @a[distance=..2.5] at @s run setblock ~ ~ ~ fire[age=15] keep
execute as @e[type=area_effect_cloud,tag=molotov_flame,nbt={Age:200}] at @s run function cubic_payload:weapons/molotov/molotov_flame_kill

execute as @e[type=item,nbt={Item:{tag:{Mine:1}},OnGround:1b},tag=!mine] at @s run scoreboard players add @s mine 1
execute as @e[type=item,nbt={Item:{tag:{Mine:1}},OnGround:1b},tag=!mine,scores={mine=10..}] at @s run function cubic_payload:weapons/mine/arm
execute as @e[type=item,tag=mine] at @s run particle minecraft:crit ~ ~0.4 ~ 0 0 0 0.1 1
execute as @e[type=item,tag=mine,tag=blue] at @s if entity @a[distance=..1.25,team=!blue] run function cubic_payload:weapons/mine/explode
execute as @e[type=item,tag=mine,tag=red] at @s if entity @a[distance=..1.25,team=!red] run function cubic_payload:weapons/mine/explode 

execute as @e[type=item,tag=mine,tag=!red,tag=!blue] at @s if entity @p[team=red] run tag @s add red
execute as @e[type=item,tag=mine,tag=!red,tag=!blue] at @s if entity @p[team=blue] run tag @s add blue

effect give @a[nbt={SelectedItem:{id:"minecraft:crossbow",Count:1b,tag:{Charged:1b,SniperRifle:1}}}] minecraft:slowness 99999 5 true
effect give @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:crossbow",Count:1b,tag:{Charged:1b,SniperRifle:1}}]}] minecraft:slowness 99999 5 true

effect clear @a[nbt=!{SelectedItem:{id:"minecraft:crossbow",Count:1b,tag:{Charged:1b,SniperRifle:1}}},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:crossbow",Count:1b,tag:{Charged:1b,SniperRifle:1}}]}] minecraft:slowness

#Weapon detection
execute as @a[nbt={SelectedItem:{tag:{GunData:{}}}}] run tag @s add holding_weapon

execute as @a[nbt=!{SelectedItem:{tag:{GunData:{}}}}] run tag @s remove holding_weapon

#Right-Click detection
execute as @a[scores={rc=1..,ammo_clip=1..},tag=!reloading] at @s anchored eyes run function cubic_payload:weapons/shoot
execute as @a[scores={shoot=1..}] at @s anchored eyes run function cubic_payload:weapons/shoot
execute as @a[scores={rc=1..},nbt={SelectedItem:{tag:{Cloaker:1,Active:1}}},tag=cloaked, tag=spy] at @s run function cubic_payload:weapons/cloaker/disable
execute as @a[scores={rc=1..},nbt={SelectedItem:{tag:{Cloaker:1,Active:0}}},tag=!cloaked, tag=spy] at @s run function cubic_payload:weapons/cloaker/enable

execute as @a[scores={rc=1..},nbt={SelectedItem:{tag:{Medigun:1}}}] at @s run function cubic_payload:weapons/medigun/shoot

scoreboard players reset @a[scores={rc=1..,}] rc
scoreboard players reset @a[scores={shoot=1..}] shoot

#Flame Thrower
execute as @e[type=area_effect_cloud,tag=ft_flame,nbt=!{Age:20}] at @s run setblock ~ ~ ~ fire keep
execute as @e[type=area_effect_cloud,tag=ft_flame,nbt={Age:19}] at @s run fill ~ ~ ~ ~ ~ ~ air replace fire

#Cloaker
execute as @a[tag=cloaked,team=blue] at @s run execute if entity @e[distance=..0.75,team=!blue] positioned ~ ~0.9 ~ run particle minecraft:dust 0.0 0.0 1.0 0.7 ~ ~ ~ 0.25 0.4 0.25 1 1 force
execute as @a[tag=cloaked,team=red] at @s run execute if entity @e[distance=..0.75,team=!red] positioned ~ ~0.9 ~ run particle minecraft:dust 1.0 0.0 0.0 0.7 ~ ~ ~ 0.25 0.4 0.25 1 1 force

execute as @a[scores={cloak_effect=..30}] at @s run function cubic_payload:weapons/cloaker/effect
execute as @a[scores={cloak_effect=31..}] run scoreboard players reset @s cloak_effect

#Grenades
execute as @e[type=item,tag=pipe] at @s run particle smoke ~ ~ ~ 0 0 0 0.01 1 force
execute as @e[type=item,tag=pipe] at @s run scoreboard players add @s mine 1

execute as @e[type=item,tag=pipe,scores={mine=50..}] at @s run function cubic_payload:weapons/grenade_launcher/explode

execute as @a[scores={death=1..}] at @s run tag @s remove cloaked
scoreboard players reset @a death

#Reload
execute as @a[predicate=cubic_payload:weapons/reloading] run tag @s add reloading
execute as @a[predicate=cubic_payload:weapons/reloading] at @s run function cubic_payload:weapons/reload/tick
execute as @a[predicate=!cubic_payload:weapons/reloading] run tag @s remove reloading

execute as @a[predicate=cubic_payload:sneaking,tag=!reloading] at @s if score @s ammo_clip < @s max_ammo_clip run function cubic_payload:weapons/reload/start
execute as @a[scores={ammo_clip=0},tag=!reloading] at @s run function cubic_payload:weapons/reload/start

execute as @e[tag=turret,team=red] at @s if entity @e[distance=..10,team=blue,type=!item] run function cubic_payload:weapons/turret/tick
execute as @e[tag=turret,team=blue] at @s if entity @e[distance=..10,team=red,type=!item] run function cubic_payload:weapons/turret/tick
execute as @e[tag=turret,tag=active] at @s unless entity @e[distance=..10,type=!item] run function cubic_payload:weapons/turret/deactivate
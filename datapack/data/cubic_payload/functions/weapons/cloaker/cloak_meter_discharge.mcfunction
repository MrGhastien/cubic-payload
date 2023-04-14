execute as @a[tag=spy,tag=cloaked] run scoreboard players remove @s cloak 1

execute as @a[tag=spy,tag=cloaked,scores={cloak=..0}] at @s run function cubic_payload:weapons/cloaker/disable

schedule function cubic_payload:weapons/cloaker/cloak_meter_discharge 4
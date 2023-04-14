execute positioned ^ ^ ^1 if predicate cubic_payload:rail run function cubic_payload:payload/distance

execute if predicate cubic_payload:rail_turn positioned ^-1 ^ ^ if predicate cubic_payload:rail rotated ~90 ~ run function cubic_payload:payload/distance
execute if predicate cubic_payload:rail_turn positioned ^1 ^ ^ if predicate cubic_payload:rail rotated ~-90 ~ run function cubic_payload:payload/distance

execute positioned ^ ^-1 ^1 if predicate cubic_payload:rail_ascending run function cubic_payload:payload/distance
execute if predicate cubic_payload:rail_ascending positioned ~ ~1 ~ run function cubic_payload:payload/distance

particle minecraft:happy_villager ~ ~ ~ 0 0 0 0.1 1

execute if score distance display matches 1.. run scoreboard players remove distance display 1
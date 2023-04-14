execute if score next cp matches 0 run function cubic_payload:payload/cap0
execute if score next cp matches 1 run function cubic_payload:payload/cap1
execute if score next cp matches 2 run function cubic_payload:payload/cap2

execute as @a at @s run playsound cubic_payload:cp.capture record @s ~ ~ ~

execute as @e[tag=cp] at @s run data modify entity @s CustomName set from block ~ ~-4 ~ Text1
execute as @e[tag=cp,tag=subtitle] at @s run data modify entity @s CustomName set from block ~ ~-3 ~ Text2
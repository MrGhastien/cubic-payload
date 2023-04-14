scoreboard players remove sec temps 1
scoreboard players remove totalSec temps 1
execute if score sec temps matches ..-1 if score minute temps matches 1.. run scoreboard players remove minute temps 1
execute if score sec temps matches ..-1 run scoreboard players set sec temps 59
execute if score sec temps matches 60.. run scoreboard players add minute temps 1
execute if score sec temps matches 60.. run scoreboard players set sec 0

execute if data storage cubic_payload:state {Setup:0b} unless score totalSec temps matches 1.. run function cubic_payload:game/winred

execute if data storage cubic_payload:state {Setup:1b} unless score totalSec temps matches 1.. run function cubic_payload:game/start

scoreboard players set distance display 511

execute if data storage cubic_payload:state {Setup:0b} if score totalSec temps matches 1.. as @e[type=minecart,tag=payload,tag=go_north] at @s rotated 180 0 run function cubic_payload:payload/distance
execute if data storage cubic_payload:state {Setup:0b} if score totalSec temps matches 1.. as @e[type=minecart,tag=payload,tag=go_south] at @s rotated 0 0 run function cubic_payload:payload/distance
execute if data storage cubic_payload:state {Setup:0b} if score totalSec temps matches 1.. as @e[type=minecart,tag=payload,tag=go_west] at @s rotated 90 0 run function cubic_payload:payload/distance
execute if data storage cubic_payload:state {Setup:0b} if score totalSec temps matches 1.. as @e[type=minecart,tag=payload,tag=go_east] at @s rotated -90 0 run function cubic_payload:payload/distance

execute if score totalSec temps matches 1.. run schedule function cubic_payload:timer 1s
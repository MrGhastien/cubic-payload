scoreboard players reset @s cloak_effect
function cubic_payload:weapons/cloaker/effect
effect give @s minecraft:invisibility 99999 0 true
playsound minecraft:block.beacon.activate ambient @a ~ ~ ~ 1 1
execute if entity @s[team=red] run particle minecraft:dust 1 0 0 1 ~ ~1 ~ 0.25 .4 .25 0 50
execute if entity @s[team=blue] run particle minecraft:dust 0 0 1 1 ~ ~1 ~ 0.25 .4 .25 0 50
execute if entity @s[nbt=!{Inventory:[{Slot:-106b,tag:{Cloaker:1}}]}] run item replace entity @s weapon.mainhand with minecraft:carrot_on_a_stick{display:{Name:'{"text":"Cloaker (Activé)","color":"yellow","italic":false}'},Cloaker:1,Active:1,CustomModelData:10000012}
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Cloaker:1}}]}] run item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick{display:{Name:'{"text":"Cloaker (Activé)","color":"yellow","italic":false}'},Cloaker:1,Active:1,CustomModelData:10000012}
clear @s minecraft:carrot_on_a_stick{Cloaker:1,Active:0}
tag @s add cloaked
scoreboard players reset @s rc
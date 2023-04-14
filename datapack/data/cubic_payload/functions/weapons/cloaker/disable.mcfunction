scoreboard players reset @s cloak_effect
function cubic_payload:weapons/cloaker/effect
effect clear @s minecraft:invisibility
playsound minecraft:block.beacon.deactivate ambient @a ~ ~ ~ 1 1
execute if entity @s[nbt=!{Inventory:[{Slot:-106b,tag:{Cloaker:1}}]}] run item replace entity @s weapon.mainhand with minecraft:carrot_on_a_stick{display:{Name:'{"text":"Cloaker (Désactivé)","color":"yellow","italic":false}'},Cloaker:1,Active:0,CustomModelData:10000011}
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Cloaker:1}}]}] run item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick{display:{Name:'{"text":"Cloaker (Désactivé)","color":"yellow","italic":false}'},Cloaker:1,Active:0,CustomModelData:10000011}
clear @s minecraft:carrot_on_a_stick{Cloaker:1,Active:1}
tag @s remove cloaked
scoreboard players reset @s rc
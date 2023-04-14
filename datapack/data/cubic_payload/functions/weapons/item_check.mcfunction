execute as @a[tag=spy,tag=cloaked] at @s if entity @s[nbt=!{Inventory:[{tag:{Cloaker:1,Active:1}}]}] run clear @s minecraft:carrot_on_a_stick{Cloaker:1,Active:0}
execute as @a[tag=spy,tag=cloaked] at @s if entity @s[nbt=!{Inventory:[{tag:{Cloaker:1,Active:1}}]}] run give @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Cloaker","color":"yellow","italic":false}'},Cloaker:1,Active:1,CustomModelData:10000011} 1

execute as @a[tag=spy,tag=!cloaked] at @s if entity @s[nbt=!{Inventory:[{tag:{Cloaker:1,Active:0}}]}] run clear @s minecraft:carrot_on_a_stick{Cloaker:1,Active:1}
execute as @a[tag=spy,tag=!cloaked] at @s if entity @s[nbt=!{Inventory:[{tag:{Cloaker:1,Active:0}}]}] run give @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Cloaker","color":"yellow","italic":false}'},Cloaker:1,Active:0,CustomModelData:10000011} 1

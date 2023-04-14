clear @s
tag @s remove soldier
tag @s remove medic
tag @s remove pyro
tag @s remove demoman
tag @s remove sniper
execute if entity @s[tag=!cloaked] run give @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Cloaker","color":"yellow","italic":false}'},Cloaker:1,Active:0,CustomModelData:10000011} 1
execute if entity @s[tag=cloaked] run give @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Cloaker","color":"yellow","italic":false}'},Cloaker:1,Active:1,CustomModelData:10000012} 1
scoreboard players set @s cloak 100
give @p minecraft:iron_sword{display:{Name:'{"text":"Couteau","italic":false}'},Unbreakable:1b,Knife:1,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:-0.5,Operation:1,UUIDLeast:998318,UUIDMost:903395},{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-0.5,Operation:1,UUIDLeast:998318,UUIDMost:903395}]} 1
tag @s add spy
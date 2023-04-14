clear @s
tag @s remove spy
tag @s remove medic
tag @s remove pyro
tag @s remove demoman
tag @s remove sniper
execute if entity @s[team=red] run item replace entity @s armor.head with minecraft:leather_helmet{display:{color:16711680},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:20,Operation:0,UUIDLeast:214879,UUIDMost:513638,Slot:"head"}]} 1
execute if entity @s[team=blue] run item replace entity @p armor.head with minecraft:leather_helmet{display:{color:39423},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:20,Operation:0,UUIDLeast:214879,UUIDMost:513638,Slot:"head"}]} 1
give @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Fusil d\'assaut","color":"yellow","italic":false}'},Unbreakable:1b,CustomModelData:10000003,Rifle:1,GunData:{Capacity:30, Clip:0, ReloadTime:2f, Reloaded:0f, Reloading:0b},HideFlags:2,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:500,Operation:2,UUIDLeast:167033,UUIDMost:201750}]} 1
give @s minecraft:iron_sword{display:{Name:'{"text":"Couteau","italic":false}'},Unbreakable:1b,Knife:1} 1
tag @s add soldier
clear @s
tag @s remove spy
tag @s remove soldier
tag @s remove pyro
tag @s remove demoman
tag @s remove medic
execute if entity @s[team=red] run item replace entity @s armor.head with minecraft:leather_helmet{display:{color:16711680},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-6,Operation:0,UUIDLeast:214879,UUIDMost:513638,Slot:"head"}]} 1
execute if entity @s[team=blue] run item replace entity @p armor.head with minecraft:leather_helmet{display:{color:39423},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-6,Operation:0,UUIDLeast:214879,UUIDMost:513638,Slot:"head"}]} 1
execute if entity @s[team=blue] run give @s minecraft:crossbow{display:{Name:'{"text":"AWP","color":"yellow","italic":false}'},Unbreakable:1b,CustomModelData:10000021,SniperRifle:1} 1
execute if entity @s[team=red] run give @s minecraft:crossbow{display:{Name:'{"text":"Fusil de chasse (à l\'homme)","color":"yellow","italic":false}'},Unbreakable:1b,CustomModelData:10000022,SniperRifle:1} 1
give @s minecraft:tipped_arrow{display:{Name:'{"text":"Munition de Sniper","italic":false}'},HideFlags:63,CustomPotionEffects:[{Id:7b,Amplifier:100b,Duration:1,ShowParticles:0b}],CustomPotionColor:16759552} 64
give @s minecraft:iron_sword{display:{Name:'{"text":"Machette","italic":false}'},Unbreakable:1b,Machette:1} 1
tag @s add sniper
scoreboard players set @s reload 0
scoreboard players set @s max_reload 0

execute if entity @s[tag=holding_weapon] store result score @s max_reload run data get entity @s SelectedItem.tag.GunData.ReloadTime 20

execute if entity @s[tag=holding_weapon] run tag @s add reloading
execute if entity @s[tag=holding_weapon] run playsound minecraft:block.piston.contract ambient @a
function cubic_payload:weapons/update_mainhand
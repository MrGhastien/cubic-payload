execute if entity @s[nbt={SelectedItem:{tag:{GunData:{}}}}] store result score @s ammo_clip run data get entity @s SelectedItem.tag.GunData.Capacity
execute if entity @s[nbt={SelectedItem:{tag:{GunData:{}}}}] store result score @s max_ammo_clip run data get entity @s SelectedItem.tag.GunData.Capacity

execute if entity @s[nbt={SelectedItem:{tag:{GunData:{}}}}] run playsound cubic_payload:weapons.sniper.bolt ambient @a

title @s actionbar {"text":"Rechargement terminé !","color":"green"}

tag @s remove reloading
function cubic_payload:weapons/update_mainhand
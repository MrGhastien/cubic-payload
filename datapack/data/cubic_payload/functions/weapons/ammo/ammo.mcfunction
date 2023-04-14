execute if entity @s[nbt={SelectedItem:{tag:{GunData:{}}}}] store result score @s ammo_clip run data get entity @s SelectedItem.tag.GunData.Clip
execute if entity @s[nbt={SelectedItem:{tag:{GunData:{}}}}] store result score @s max_ammo_clip run data get entity @s SelectedItem.tag.GunData.Capacity

execute if entity @s[nbt=!{SelectedItem:{tag:{GunData:{}}}}] run scoreboard players set @s ammo_clip -1
execute if entity @s[nbt=!{SelectedItem:{tag:{GunData:{}}}}] run scoreboard players set @s max_ammo_clip -1
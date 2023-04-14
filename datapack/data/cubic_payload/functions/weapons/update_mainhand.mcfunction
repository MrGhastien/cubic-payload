setblock ~ 0 ~ shulker_box
data modify storage cubic_payload:weapon_updater Weapon set from entity @s SelectedItem
execute store result storage cubic_payload:weapon_updater Weapon.tag.GunData.Clip int 1 run scoreboard players get @s ammo_clip
execute store result storage cubic_payload:weapon_updater Weapon.tag.GunData.Reloaded float 0.05 run scoreboard players get @s reload
execute store success storage cubic_payload:weapon_updater Weapon.tag.GunData.Reloading byte 1 run execute if entity @s[tag=reloading]
data modify storage cubic_payload:weapon_updater Weapon.Slot set value 0
data modify block ~ 0 ~ Items insert 0 from storage cubic_payload:weapon_updater Weapon

loot replace entity @s weapon.mainhand 1 mine ~ 0 ~ air{drop_contents:1b}

setblock ~ 0 ~ bedrock
data remove storage cubic_payload:weapon_updater Weapon
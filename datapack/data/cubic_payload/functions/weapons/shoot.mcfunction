execute if entity @s[nbt={SelectedItem:{tag:{Flamethrower:1}}}] run function cubic_payload:weapons/flamethrower/shoot

execute if entity @s[nbt={SelectedItem:{tag:{Rifle:1}}}] run function cubic_payload:weapons/rifle/shoot

execute if entity @s[nbt={SelectedItem:{tag:{PipeLauncher:1}}}] run function cubic_payload:weapons/grenade_launcher/shoot

execute if entity @s[nbt={SelectedItem:{tag:{SniperRifle:1}}}] run function cubic_payload:weapons/sniper/shoot

execute if entity @s[nbt={SelectedItem:{tag:{GunData:{}}}}] run scoreboard players remove @s ammo_clip 1
execute if entity @s[nbt={SelectedItem:{tag:{GunData:{}}}}] run function cubic_payload:weapons/update_mainhand
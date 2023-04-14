title @a title [{"text":"L'","color":"aqua"},{"storage":"cubic_payload:cp","nbt":"CapturePoints[2].name","color":"aqua"}]
title @a subtitle {"text":"a été capturé par l'équipe bleue !"}

setblock -41 63 -9 minecraft:light_blue_concrete
setblock -41 64 -9 minecraft:activator_rail[shape=north_south]

data merge block -41 62 -9 {Text1:'{"storage":"cubic_payload:cp","nbt":"CapturePoints[2].name","color":"aqua","bold":true}',Text2:'{"text":"[BLEU]","color":"aqua"}'}

schedule function cubic_payload:payload/capsb 1

function cubic_payload:game/winblue
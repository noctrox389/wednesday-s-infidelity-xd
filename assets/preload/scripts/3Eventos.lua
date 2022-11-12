function onEvent(name, value1, value2)
if name == "Flash White" then
cameraFlash('camOther', 'FFFFFF', 0.5)
end
if name == "Flash Black" then
cameraFlash('camOther', '000000', 0.5)
end
if name == 'Asbel' then
if value1 == 'flsb' then
cameraFlash('camOther', '000000', 0.1)
end
end
end
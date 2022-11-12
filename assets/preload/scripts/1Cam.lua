
local xx = 0;
local yy = 0;
local xx2 = 0;
local yy2 = 0;
local xx3 = 0;
local yy3 = 0;
local ofs = 100;
local ofs2 = 100;
local ofs3 = 5;
local followchars = true;
local del = 0;
local del2 = 0;

local Vecindario = {'Wistfulness', 'Dejection' , 'Unknown Suffering', 'Last Day', 'Sunsets', 'Battered', 'reefer-madness'}
local Iratus = {'Versiculus Iratus'}
local Hellhole = {'Hellhole'}
local Toyland = {'Carnival in Toyland', 'Spring March'}
local TooSlow = {'Too Slow'}
local Cheddar = {'Cravings', 'Hunger Pangs'}
local Sus = {'Corpse', 'Needle Mouse', 'Unknown Defeat'}
local UTLN = {'Untold Loneliness'}
local Jonc = {'Accelerant'}
local Vesania = {'Vesania'}
local Moki = {"Kriman't"}
local stageLeakers = {'Leak ma Balls'}
local CH = {'Clubhouse'}
local PH = {'Phantasm'}

function checkList(list, value)
    for i=0,table.maxn(list) do
        if list[i]==value then return true end
    end
end

function onCountdownStarted()
if checkList(Vecindario, songName) == true then
xx = 420.95;
yy = 473;
xx2 = 952.9;
yy2 = 550;
elseif checkList(TooSlow, songName) == true then
xx = 420.95;
yy = 513;
xx2 = 952.9;
yy2 = 550;
elseif checkList(Iratus, songName) == true then
xx = 662.95;
yy = 360;
xx2 = 952.9;
yy2 = 370;
elseif checkList(Toyland, songName) == true then
xx = 550;
yy = 620;
xx2 = 770;
yy2 = 600;
elseif checkList(Hellhole, songName) == true then
xx = 220.95;
yy = 513;
xx2 = 952.9;
yy2 = 650;
xx3 = 500;
yy3 = 100;
elseif checkList(Cheddar, songName) == true then
xx = 410.95;
yy = 363;
xx2 = 952.9;
yy2 = 550;
elseif checkList(Sus, songName) == true then
xx = 420.95;
yy = 513;
xx2 = 952.9;
yy2 = 550;
elseif checkList(UTLN, songName) == true then
xx = 420.95;
yy = 513;
xx2 = 952.9;
yy2 = 580;
elseif checkList(Vesania, songName) == true then
xx = 420.95;
yy = 313;
xx2 = 1100.9;
yy2 = 600;
elseif checkList(Jonc, songName) == true then
xx = 250;
yy = 270;
xx2 = 1152.9;
yy2 = 350;
xx3 = 630;
yy3 = -100;
elseif checkList(Moki, songName) == true then
xx = 420.95;
yy = 563;
xx2 = 952.9;
yy2 = 610;
elseif checkList(stageLeakers, songName) == true then
ofs = 1;
ofs2 = 1;
ofs3 = 1;
xx = 320.90;
yy = 380;
xx2 = 1052.9;
yy2 = 410;
xx3 = 1150.9;
yy3 = 420;
elseif checkList(CH, songName) == true then
xx = 420.95;
yy = 413;
xx2 = 952.9;
yy2 = 550;
elseif checkList(PH, songName) == true then
xx = 320.95;
yy = 473;
xx2 = 320.9;
yy2 = 473;
end

function onStepHit()
if checkList(Iratus, songName) == true then
if curStep == 495 then
xx = 300.95;
yy = 140;
xx2 = 952.9;
yy2 = 370;
end
if curStep == 512 then
xx = 400.95;
yy = 263;
xx2 = 810.9;
yy2 = 370;
end
end
if checkList(Vesania, songName) == true then
if curStep == 128 or curStep == 1040 then
xx = 420.95;
yy = 313;
xx2 = 952.9;
yy2 = 400;
end
if curStep == 784 then
xx = 620;
yy = 213;
xx2 = 620;
yy2 = 113;
end
elseif songName == 'Hunger Pangs' then
if curStep == 1 then
xx = 300.95;
end
if curStep == 342 then
xx = 410.95;
end
end
end

function onUpdate()
    if followchars == true then
            if mustHitSection == false then
                if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                    triggerEvent('Camera Follow Pos',xx-ofs,yy)
                end
                if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                    triggerEvent('Camera Follow Pos',xx+ofs,yy)
                end
                if getProperty('dad.animation.curAnim.name') == 'singUP' then
                    triggerEvent('Camera Follow Pos',xx,yy-ofs)
                end
                if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                    triggerEvent('Camera Follow Pos',xx,yy+ofs)
                end
                if getProperty('dad.animation.curAnim.name') == 'idle' then
                    triggerEvent('Camera Follow Pos',xx,yy)
                end
            else
                if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                    triggerEvent('Camera Follow Pos',xx2-ofs2,yy2)
                end
                if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                    triggerEvent('Camera Follow Pos',xx2+ofs2,yy2)
                end
                if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                    triggerEvent('Camera Follow Pos',xx2,yy2-ofs2)
                end
                if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                    triggerEvent('Camera Follow Pos',xx2,yy2+ofs2)
                end
                if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN-alt' then
                    triggerEvent('Camera Follow Pos',xx2,yy2+ofs2)
                end
                if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                        triggerEvent('Camera Follow Pos',xx2,yy2)
                end
            end
             if gfSection == true then
                    if getProperty('gf.animation.curAnim.name') == 'singLEFT' then
                        triggerEvent('Camera Follow Pos',xx3-ofs3,yy3)
                    end
                    if getProperty('gf.animation.curAnim.name') == 'singRIGHT' then
                        triggerEvent('Camera Follow Pos',xx3+ofs3,yy3)
                    end
                    if getProperty('gf.animation.curAnim.name') == 'singUP' then
                        triggerEvent('Camera Follow Pos',xx3,yy3-ofs3)
                    end
                    if getProperty('gf.animation.curAnim.name') == 'singDOWN' then
                        triggerEvent('Camera Follow Pos',xx3,yy3+ofs3)
                    end
                    if getProperty('gf.animation.curAnim.name') == 'idle' then
                        triggerEvent('Camera Follow Pos',xx3,yy3)
                    end
                end
            triggerEvent('Camera Follow Pos','','')
        end
    end
end
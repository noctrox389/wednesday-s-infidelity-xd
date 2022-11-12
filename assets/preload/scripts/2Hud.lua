local OffsetY = 40
local WI = 1
local SongsPer = {'Wistfulness', 'Dejection' , 'Unknown Suffering', 'Last Day', 'Sunsets', 'Versiculus Iratus', 'Hellhole', 'Spring March', 'Carnival in Toyland', 'Vesania', 'Cravings', 'Hunger Pangs', 'Needle Mouse', 'Unknown Defeat', 'Too Slow', 'Battered', 'Accelerant', 'Untold Loneliness', 'Corpse'}

--Wow, mirate no puedes hacer un hud y una funcion entonces me la robas a mi :TF:

function onCreate()
    makeLuaText('Scr','', 0, 15, 520+OffsetY); 
    setTextSize('Scr', 20);
    setTextFont('Scr', "WednesdayFont.ttf") 
    addLuaText('Scr');

    makeLuaText('Mss','', 0, 15, 550+OffsetY+1); 
    setTextSize('Mss', 20);
    setTextFont('Mss', "WednesdayFont.ttf")
    addLuaText('Mss');
 
    makeLuaText('Acc', 'Accuracy: '..math.floor(rating * 100, 2)..'%', 0, 15, 580+OffsetY) 
    setTextSize('Acc', 20);
    setTextFont('Acc', "WednesdayFont.ttf")
    addLuaText('Acc');

    makeLuaText('songNm', ''..songName, 0, 15, 630+OffsetY) 
    setTextSize('songNm', 20);
    setTextFont('songNm', "WednesdayFont.ttf")
    addLuaText('songNm');

    makeLuaText('Sck','',0, 1150, 500+OffsetY+52); 
    setTextSize('Sck', 20);
    setTextFont('Sck', "WednesdayFont.ttf")
    addLuaText('Sck');

    makeLuaText('Gd','',0, 1150, 530+OffsetY+50); 
    setTextSize('Gd', 20);
    setTextFont('Gd', "WednesdayFont.ttf")
    addLuaText('Gd');

    makeLuaText('Bd','',0, 1150, 560+OffsetY+47); 
    setTextSize('Bd', 20);
    setTextFont('Bd', "WednesdayFont.ttf")
    addLuaText('Bd');

    makeLuaText('Sht','',0, 1150, 595+OffsetY+40); 
    setTextSize('Sht', 20);
    setTextFont('Sht', "WednesdayFont.ttf")
    addLuaText('Sht');

    makeLuaText('timeleft', milliToHuman(math.floor(songLength)),0, 640, 645); 
    setTextSize('timeleft', 20);
    setTextFont('timeleft', "WednesdayFont.ttf")
    addLuaText('timeleft');
    setProperty('timeleft.alpha', 0)

    makeLuaText('eso', '-',0, 622, 650+OffsetY); 
    setTextSize('eso', 20);
    setTextFont('eso', "WednesdayFont.ttf")
    addLuaText('eso');
    setProperty('eso.alpha', 0)

    if songName == 'Unknown Suffering' then

    makeLuaText('timeleft0', '2', 0, 637, 650+OffsetY); 
    setTextSize('timeleft0', 20);
    setTextFont('timeleft0', "WednesdayFont.ttf")
    addLuaText('timeleft0');
    setProperty('timeleft0.alpha', 0)

    makeLuaText('timeleft2', ':0', 0, 650, 645+OffsetY); 
    setTextSize('timeleft2', 20);
    setTextFont('timeleft2', "WednesdayFont.ttf")
    addLuaText('timeleft2');
    setProperty('timeleft2.alpha', 0)

    makeLuaText('timeleft3', ''..WI, 0, 669, 645+OffsetY); 
    setTextSize('timeleft3', 20);
    setTextFont('timeleft3', "WednesdayFont.ttf")
    addLuaText('timeleft3');
    setProperty('timeleft3.alpha', 0)
    end
if isStoryMode then
addLuaScript('images/icons/wm')
  end
end

function onCountdownStarted()
  setProperty('timeBarBG.visible', false)
  setProperty('scoreTxt.visible', false)

  setTextSize('timeTxt', 20)
  setTextFont('timeTxt', "WednesdayFont.ttf")
  setTextBorder('timeTxt', 1, '000000')
  setTextAlignment('timeTxt', 'left')

  setProperty('timeTxt.x', 574)
  setProperty('timeTxt.y', 668)
  setProperty('timeleft.y', 668)
  setProperty('timeleft0.y', 668)
  setProperty('timeleft2.y', 668)
  setProperty('timeleft3.y', 668)

  setProperty('eso.y', 668)

  setProperty('timeBar.x', 445)
  setProperty('timeBar.y', 710)
  setProperty('timeBar.scale.x', 3.275)
  
  setObjectCamera('timeBar', 'other')
  setObjectCamera('timeTxt', 'other')
  setObjectCamera('timeleft', 'other')  
  setObjectCamera('timeleft0', 'other')
  setObjectCamera('timeleft2', 'other')
  setObjectCamera('timeleft3', 'other')
  setObjectCamera('songNm', 'other')
  setObjectCamera('Scr', 'other')
  setObjectCamera('Gd', 'other')
  setObjectCamera('Bd', 'other')
  setObjectCamera('Sht', 'other')
  setObjectCamera('Scr', 'other')
  setObjectCamera('Scr', 'other')
  setObjectCamera('Mss', 'other')
  setObjectCamera('Acc', 'other')  
  setObjectCamera('eso', 'other')   
  setObjectCamera('Sck', 'other')   

setProperty('timeBar.color', getColorFromHex('ffffff'))
if songName == 'Unknown Suffering' then
makeLuaSprite('FKBR', '', 4, 710)
makeGraphic('FKBR', 150, 150, 'ffffff')
addLuaSprite('FKBR', true)
setObjectCamera('FKBR', 'other')
setScrollFactor('FKBR', 0, 0)
setProperty('FKBR.scale.y', getProperty('FKBR.scale.y') * 2.6)
end
if checkList(SongsPer, songName) == true then
makeAnimatedLuaSprite('grain', 'backgrounds/grain', 0, 0);
addAnimationByPrefix('grain', 'grain', 'grain', 24, true);  
objectPlayAnimation('grain', 'grain', true)
setGraphicSize('grain', screenWidth, screenHeight)
setObjectOrder('grain', 99)
addLuaSprite('grain', true);
setObjectCamera('grain', 'other');
end
end

function onSongStart()

doTweenAlpha('timeleft0', 'timeleft0', 1, 0.1, 'linear')
doTweenAlpha('timeleft2', 'timeleft2', 1, 0.1, 'linear')
doTweenAlpha('timeleft3', 'timeleft3', 1, 0.1, 'linear')
doTweenAlpha('eso', 'eso', 1, 0.1, 'linear')
setTextString('timeleft', ''..milliToHuman(math.floor(songLength)));
if songName ~= 'Unknown Suffering' then
doTweenAlpha('timeleft', 'timeleft', 1, 0.1, 'linear')
end
end

function onRecalculateRating()
setTextString('Sck', 'Sick: '..getProperty('sicks'));
setTextString('Gd', 'Good: '..getProperty('goods'));
setTextString('Bd', 'Bad: '..getProperty('bads'));
setTextString('Sht', 'Shit: '..getProperty('shits'));
setTextString('Scr', 'Score: '..getProperty('songScore'));
setTextString('Mss', 'Misses: '..getProperty('songMisses'));
setTextString('Acc','Accuracy: '..round(rating * 100, 2));
end

function onUpdate()
if songName == 'Unknown Suffering' then
if curStep < 1632 then
scaleObject('FKBR', 12.265 * getProperty("songPercent"), 1.095)
end
if curStep == 1606 then
setProperty('camGame.visible', false);  
doTweenAlpha('camHUD', 'camHUD', 0, 1, 'linear')
end
if curStep == 1626 then
runTimer('eee', 0.01, 1);
end
if curStep > 1633 and curStep < 1743 then
setTextString('timeleft3', ''..WI);
end
if curStep == 1743 then
doTweenAlpha('camHUD', 'camHUD', 1, 1, 'linear')
setProperty('camGame.visible', true);  
end
if getProperty('timeleft3.text.length') == 2 then
setTextString('timeleft2', ':')
setProperty('timeleft3.x', 656)
end
end
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'eee' then
runTimer('WI', 0.161, 0);
doTweenX("FKBRX", "FKBR", -335, 7.75, "linear") 
end
if tag == 'WI' then
WI = WI + 1
end
end

function milliToHuman(milliseconds)
  local totalseconds = math.floor(milliseconds / 1000)
  local seconds = totalseconds % 60
  local minutes = math.floor(totalseconds / 60)
  minutes = minutes % 60 
  return string.format("%02d:%02d", minutes, seconds)  
end

function checkList(list, value)
    for i=0,table.maxn(list) do
        if list[i]==value then return true end
    end
end

function round(x, n)
    n = math.pow(10, n or 0)
    x = x * n
    if x >= 0 then x = math.floor(x + 0.5) else x = math.ceil(x - 0.5) end
    return x / n
end

function mysplit (inputstr, sep)
    if sep == nil then
        sep = "%s";
    end
    local t={};
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        table.insert(t, str);
    end
    return t;
end

function onEvent(name, value1, value2)
local Val = mysplit(value2, ",");
if name == 'Asbel' then
if value1 == 'hudvis' then   
doTweenAlpha('songNm', 'songNm', Val[1], Val[2], 'linear')
doTweenAlpha('timeTxt', 'timeTxt', Val[1], Val[2], 'linear')
doTweenAlpha('timeBar', 'timeBar', Val[1], Val[2], 'linear')
doTweenAlpha('timeBarBG', 'timeBarBG', Val[1], Val[2], 'linear')
doTweenAlpha('timeleft', 'timeleft', Val[1], Val[2], 'linear')
doTweenAlpha('timeleft2', 'timeleft2', Val[1], Val[2], 'linear')
doTweenAlpha('timeleft3', 'timeleft3', Val[1], Val[2], 'linear')
doTweenAlpha('eso', 'eso', Val[1], Val[2], 'linear')
doTweenAlpha('Scr', 'Scr', Val[1], Val[2], 'linear')
doTweenAlpha('Gd', 'Gd', Val[1], Val[2], 'linear')
doTweenAlpha('Bd', 'Bd', Val[1], Val[2], 'linear')
doTweenAlpha('Sht', 'Sht', Val[1], Val[2], 'linear')
doTweenAlpha('Scr', 'Scr', Val[1], Val[2], 'linear')
doTweenAlpha('Sck', 'Sck', Val[1], Val[2], 'linear')
doTweenAlpha('Mss', 'Mss', Val[1], Val[2], 'linear')
doTweenAlpha('Acc', 'Acc', Val[1], Val[2], 'linear')
end
if value1 == 'hudvistime' then   
doTweenAlpha('songNm', 'songNm', Val[1], Val[2], 'linear')
doTweenAlpha('eso', 'eso', Val[1], Val[2], 'linear')
doTweenAlpha('Scr', 'Scr', Val[1], Val[2], 'linear')
doTweenAlpha('Gd', 'Gd', Val[1], Val[2], 'linear')
doTweenAlpha('Bd', 'Bd', Val[1], Val[2], 'linear')
doTweenAlpha('Sht', 'Sht', Val[1], Val[2], 'linear')
doTweenAlpha('Sck', 'Sck', Val[1], Val[2], 'linear')
doTweenAlpha('Scr', 'Scr', Val[1], Val[2], 'linear')
doTweenAlpha('Mss', 'Mss', Val[1], Val[2], 'linear')
doTweenAlpha('Acc', 'Acc', Val[1], Val[2], 'linear')
end
if value1 == 'hb' then   
doTweenAlpha('barbot', 'barbot', Val[1], Val[2], 'linear')
doTweenAlpha('bartop', 'bartop', Val[1], Val[2], 'linear')
end
end
end  
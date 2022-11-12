--CharterHUD made by PHG29


--Expect more updates soon, if you want 
--something on next update just tell me!
function onCreatePost()
    makeLuaText('dadC', 'Current Opponent:' .. dadName .. ' X:' .. getProperty('dad.x'), 300, 0, 530);
    setObjectCamera("dadC", 'hud'); 
    setTextColor('dadC', '0xffffff')
    setTextSize('dadC', 20);
    setTextBorder('dadC', 2, '000000')
    addLuaText("dadC");
    setTextAlignment('dadC', 'left');
    
    makeLuaText('bfC', 'Current Boyfriend:' .. boyfriendName, 300, 0, 582);
    setObjectCamera("bfC", 'hud'); 
    setTextColor('bfC', '0xffffff')
    setTextSize('bfC', 20);
    setTextBorder('bfC', 2, '000000')
    addLuaText("bfC");
    setTextAlignment('bfC', 'left');
    
    makeLuaText('gfC', 'Current Girlfriend:' .. getProperty('gf.curCharacter'), 300, 0, 630);
    setObjectCamera("gfC", 'hud'); 
    setTextColor('gfC', '0xffffff')
    setTextSize('gfC', 20);
    setTextBorder('gfC', 2, '000000')
    addLuaText("gfC");
    setTextAlignment('gfC', 'left');

    makeLuaText('stage', 'Stage Name: ' .. getPropertyFromClass('PlayState', 'SONG.stage'), 700, 0, 672);
    setObjectCamera("stage", 'hud'); 
    setTextColor('stage', '0xffffff')
    setTextSize('stage', 20);
    setTextBorder('stage', 2, '000000')
    addLuaText("stage");
    setTextAlignment('stage', 'left');
    
    makeLuaText('P1i', '', 150, 1130, 572);
    setObjectCamera("P1i", 'hud'); 
    setTextColor('P1i', '0xffffff')
    setTextSize('P1i', 20);
    setTextBorder('P1i', 2, '000000')
    addLuaText("P1i");
    setTextAlignment('P1i', 'left');

    makeLuaText('P2i', '', 120, 990, 572);
    setObjectCamera("P2i", 'hud'); 
    setTextColor('P2i', '0xffffff')
    setTextSize('P2i', 20);
    setTextBorder('P2i', 2, '000000')
    addLuaText("P2i");
    setTextAlignment('P2i', 'left');
end

function onCountdownStarted()
    setTextString('dadC','Opponent:' .. dadName .. ' X:' .. getProperty('dad.x') .. ' Y:' .. getProperty('dad.y'))
    setTextString('bfC','Boyfriend:' .. boyfriendName .. ' X:' .. getProperty('boyfriend.x') .. ' Y:' .. getProperty('boyfriend.y'))
    setTextString('gfC','Girlfriend:' .. getProperty('gf.curCharacter') .. ' X:' .. getProperty('gf.x') .. ' Y:' .. getProperty('gf.y'))
    setTextString('stage','Stage:' .. getPropertyFromClass('PlayState', 'SONG.stage'))
end

function roundDec(num, dp, sym) --Thanks to Ralsei!!!!
	--bruh = math.floor(num * 10000) / 100
	--return bruh
	if num == nil then
		debugPrint("Needs Number or getProperty('ratingPercent').")
	end
	--//Optional Modules//--
	local deci = 10^(dp or 0) -- for decimal
	local percNum = 10 ^ (2 + (dp or 0))-- diff shit
	--//Base Formula//--
	local sheesh = math.floor(num * percNum) / deci
	--//Symbol//--
	local symbol = sym or '%'
	
	return sheesh .. symbol
	--return sheesh
end 

function milliToHuman(milliseconds) -- https://forums.mudlet.org/viewtopic.php?t=3258
	local totalseconds = math.floor(milliseconds / 1000)
	local seconds = totalseconds % 60
	local minutes = math.floor(totalseconds / 60)
	minutes = minutes % 60
	return string.format("%02d:%02d", minutes, seconds)  
end
function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Jeringe Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'MOUSENOTE_assets');
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);
		end
	end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Jeringe Note' then
		characterPlayAnim('boyfriend', 'dodge', true);
		setProperty('boyfriend.specialAnim', true);
		local animToPlay = '';
		if noteData == 0 then
			animToPlay = 'singLEFT-shoot';
		elseif noteData == 1 then
			animToPlay = 'singDOWN-shoot';
		elseif noteData == 2 then
			animToPlay = 'singUP-shoot';
		elseif noteData == 3 then
			animToPlay = 'singRIGHT-shoot';
		end
		characterPlayAnim('dad', animToPlay, true);
		setProperty('dad.specialAnim', true);
	end
end

local healthDrain = 0;
function noteMiss(id, noteData, noteType, isSustainNote)
if noteType == 'Jeringe Note' then
characterPlayAnim('boyfriend', 'at', true);
setProperty('boyfriend.specialAnim', true);
characterPlayAnim('dad', animToPlay, true);
setProperty('dad.specialAnim', true);
healthDrain = healthDrain + 0.6;
	end
end

function onUpdate(elapsed)
	if healthDrain > 0 then
		healthDrain = healthDrain - 0.2 * elapsed;
		setProperty('health', getProperty('health') - 0.2 * elapsed);
		if healthDrain < 0 then
			healthDrain = 0;
		end
	end
end
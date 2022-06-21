function onCreate()
	-- background shit
	makeLuaSprite('winterwu', 'winterwu', 100, 25);
	setLuaSpriteScrollFactor('winterwu', 0.9, 0.9);	
	addLuaSprite('winterwu', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

function onCreate()
	setProperty('camHUD.visible', false)
	setProperty('skipCountdown', true);
end

function onStepHit()
if curStep == 253 then
	setProperty('camHUD.visible', true)
   end
end

function onUpdate()

	if not inGameOver then
		setPropertyFromGroup('opponentStrums',0,'alpha',0)
		setPropertyFromGroup('opponentStrums',1,'alpha',0)
		setPropertyFromGroup('opponentStrums',2,'alpha',0)
		setPropertyFromGroup('opponentStrums',3,'alpha',0)
	end

end

function onStartCountdown()
	setProperty('gf.alpha', 0)
	setProperty('dad.alpha', 0)
	setProperty('iconP2.alpha', 0)

	return Function_Continue
end
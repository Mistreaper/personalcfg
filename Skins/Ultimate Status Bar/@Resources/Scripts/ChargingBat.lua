-- Description: Is your comuter charging? This script knows.
-- AUTHOR:      CTURNER314
-- Licence:     Creative Commons Attribution - Non - Commercial - Share Alike 3.0
-- Version:     1.0

function Initialize()
	mCharging = SKIN:GetMeasure('MeasureCharging')
end

function Update()
	scharging = mCharging:GetStringValue()
	charging = tonumber(scharging)
	if charging == 1 then
		SKIN:Bang('!ShowMeterGroup', 'Charging')
	elseif charging == 0 then
		SKIN:Bang('!HideMeterGroup', 'Charging')
	else 
		print('Charging: Who knows?')
	end
end
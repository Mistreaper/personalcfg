-- Description: Is it the 1st or the 1rd? 22nd or 22st? 30th or 30rd? This script makes sure the calander is always right.
-- AUTHOR:      CTURNER314
-- Licence:     Creative Commons Attribution - Non - Commercial - Share Alike 3.0
-- Version:     1.0

function Initialize()
	DateMeasure = SKIN:GetMeasure('MeasureDate')
	Date = DateMeasure:GetStringValue()
	Postfix = 'thsfs'

	if Date == '1' or Date == '21' or Date == '31' then
		Postfix = 'st'
	elseif Date == '2' or Date == '22' then
		Postfix = 'nd'
	elseif Date == '3' or Date == '23' then
	    Postfix = 'rd' 
	else
		Postfix = 'th'
	end
end

function Update()
	SKIN:Bang('!SetOption', 'MeterDayDate', 'Text', '[MeasureDay] [MeasureDate]'..Postfix..' [MeasureMonth] [MeasureYear]')
end
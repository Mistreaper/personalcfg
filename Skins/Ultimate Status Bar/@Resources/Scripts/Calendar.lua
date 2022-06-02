-- Description: Generates the calander in minimal status bar
-- AUTHOR:      CTURNER314
-- Licence:     Creative Commons Attribution - Non - Commercial - Share Alike 3.0
-- Version:     1.0

function Initialize()


	--=============================================================================================================================================================
	-- This part of the script uses 6 steps to find out what day of the week the 1st of the current month is. The six steps have 6 variables as follows
	-- 1 dayOfMonth - The day of month, in this case always 1
	-- 2 month - a value from 1 to twelve each with a corresponding value defined in the 'if' statement
	-- 3 decade - a value from 1 to 9 indicating the current decade: can only use values from 1900 to 2019
	-- 4 yearUnit - a value fron 1 to 9 indicating the last digit in the year; for 2017: 7
	-- 5 leapOffset - a value 0, 1 or 2 indicating the leap year offset for the current year
	-- 6 DayOfWeek - a vale from 1 to 7 indicating the day of the week (0 is sunday, 1 is monday etc.) 

	monthMeasure = SKIN:GetMeasure('MeasureMonthNo')
	smonth = monthMeasure:GetStringValue()				-- Integer Value for the current month as string
	sdecade = SKIN:GetVariable('Decade') 				-- Integer value for the current decade as 
	syearUnit = SKIN:GetVariable('yearUnit')

	dayOfMonth = 1                         	-- Step 1 Value
	month = tonumber(smonth) 				-- Step 2 Initial Value
		monthAdd = 0 							-- Value to add depending on month
	decade = tonumber(sdecade)				-- Step 3 Initial Value
		decadeAdd = 5							-- Value to add depending on decade (See Table At Bottom)
	yearUnit = tonumber(syearUnit)			-- Step 4 Value
	leapOffset = 0							-- Step 5 Value as evaluated in the LEAPOFFSET VALUE if statements
	dayOfWeek = 'Unknown'					-- Step 6 Value as evaluated at the bottom of this function

	-- dayOfMonth = 1
	-- month = 4
	-- monthAdd = 5
	-- decade = 1
	-- decadeAdd = 5
	-- yearUnit = 7
	-- leapOffset = 2


end

function Update()
	-- DAY OF MONTH VALUES
	mDate = SKIN:GetMeasure('MeasureDate')
	stodayDayOfMonth = mDate:GetStringValue()
	todayDayOfMonth = tonumber(stodayDayOfMonth)


	-- MONTHADD VALUE
	if month == 5 then
		monthAdd = 0
	elseif month == 8 then
		monthAdd = 1
	elseif month == 2 or month == 3 or month == 11 then
		monthAdd = 2
	elseif month == 6 then
		monthAdd = 3
	elseif month == 9 or month == 12 then
		monthAdd = 4
	elseif month == 4 or month == 7 then
		monthAdd = 5
	elseif month == 1 or month == 10 then 
		monthAdd = 6
	else 
		print('Error: MONTHADD VALUE')
	end

	-- LEAPOFFSET VALUE
	if decade % 2 == 1 then							-- If the decade number is odd
		if yearUnit == 0 or yearUnit == 1 then
			leapOffset = 0
		elseif yearUnit == 2 or yearUnit == 3 or yearUnit == 4 or yearUnit == 5 then
			leapOffset = 1
		elseif yearUnit == 6 or yearUnit == 7 or yearUnit == 8 or yearUnit == 9 then
			leapOffset = 2
		else 
		print('Error: LEAPOFFSET VALUE - ODD')
		end
	elseif decade % 2 == 0 then 							-- If the decafe number is even
		if yearUnit == 0 or yearUnit == 1 or yearUnit == 2 or yearUnit == 3 then
			leapOffset = 0
		elseif yearUnit == 4 or yearUnit == 5 or yearUnit == 6 or yearUnit == 7 then
			leapOffset = 1
		elseif yearUnit == 8 or yearUnit == 9 then	
			leapOffset = 2
		else 
		print('Error: LEAPOFFSET VALUE - EVEN')
		end
	else
		print('Error: LEAPOFFSET VALUE')
	end 
		
	dayOfWeekint = (dayOfMonth + monthAdd + decadeAdd + yearUnit + leapOffset) % 7

	-- REMOVE 1 FROM TOTAL IF THE MONTH IS JAN OR FEB IN A LEAP YEAR
	if decade % 2 == 0 then    	-- EVEN DECADES
		if yearUnit == 0 or yearUnit == 4 or yearUnit == 8 then
			if month == 1 or month == 2 then
				dayOfWeekint = dayOfWeekint - 1
			else
				-- print('Not JAN or FEB of a leap year')
			end
		else
			-- print('Not JAN or FEB of a leap year')
		end
	elseif decade % 2 == 1 then 
		if yearUnit == 2 or yearUnit == 6 then
			if month == 2 or month == 1 then
				dayOfWeekint = dayOfWeekint - 1
			else 
				-- print('Not JAN or FEB of a leap year')
			end
		else 
			-- print('Not JAN or FEB of a leap year')
		end
	else
		-- print('Not JAN or FEB of a leap year')
	end
	-- ==============================================================================================================================================================
	-- This section works out the days in february this year
	febDays = 28
	if decade % 2 == 0 then
		if yearUnit == 0 or yearUnit == 4 or yearUnit == 8 then
			if month == 2 then
				febDays = 29
			end
		end
	elseif decade % 2 == 1 then
		if yearUnit == 2 or yearUnit == 6 then
			if month == 2 then
				febDays = 29
			end
		end
	else 
		febDays = 28
	end
	-- ===============================================================================================================================================================
	-- This section works out days in previous month and current month
	lastMonth = 'Last Month'
	lastMonthDays = 31
	if month == 1 then
		lastMonth = 'December'
		lastMonthDays = 31
		currentMonthDays = 31
	elseif month == 2 then 
		lastMonth = 'January'
		lastMonthDays = 31
		currentMonthDays = febDays
	elseif month == 3  then
		lastMonth = 'February'
		lastMonthDays = febDays
		currentMonthDays = 31
	elseif month == 4 then
		lastMonth = 'March'
		lastMonthDays = 31
		currentMonthDays = 30
	elseif month == 5 then
		lastMonth = 'April'
		lastMonthDays = 30
		currentMonthDays = 31
	elseif month == 6 then
		lastMonth = 'May'
		lastMonthDays = 31
		currentMonthDays = 30
	elseif month == 7 then
		lastMonth = 'June'
		lastMonthDays = 30
		currentMonthDays = 31
	elseif month == 8 then
		lastMonth = 'July'
		lastMonthDays = 31
		currentMonthDays = 31
	elseif month == 9 then
		lastMonth = 'August'
		lastMonthDays = 31
		currentMonthDays = 30
	elseif month == 10 then
		lastMonth = 'September'
		lastMonthDays = 30
		currentMonthDays = 31
	elseif month == 11 then
		lastMonth = 'October'
		lastMonthDays = 31
		currentMonthDays = 30
	elseif month == 12 then
		lastMonth = 'November'
		lastMonthDays = 30
		currentMonthDays = 31
	end
	-- ===============================================================================================================================================================
	-- This section makes all squares' 'FontColor's the 'current month' color, so the next section can change some of them
	for square = 1,42,1
	do 
		SKIN:Bang('!SetOption', 'MeterDay'..square, 'FontColor', '#SubMeterAccentColor#')
	end
	
	
	
	-- ===============================================================================================================================================================
	-- This section applies the correct numbers and color to the dates included within the 42 squares, but not in the current month
		if dayOfWeekint == 1 then				-- Monday
			SKIN:Bang('!SetOption', 'MeterDay1', 'Text', '1')
		elseif dayOfWeekint == 2 then			-- Tuesday
			SKIN:Bang('!SetOption', 'MeterDay2', 'Text', '1')
			SKIN:Bang('!SetOption', 'MeterDay1', 'Text', tostring(lastMonthDays))
			SKIN:Bang('!SetOption', 'MeterDay1', 'FontColor', '#NotThisMonthColor#')
		elseif dayOfWeekint == 3 then			-- Wednesday
			SKIN:Bang('!SetOption', 'MeterDay3', 'Text', '1')
			SKIN:Bang('!SetOption', 'MeterDay2', 'Text', tostring(lastMonthDays))
			SKIN:Bang('!SetOption', 'MeterDay2', 'FontColor', '#NotThisMonthColor#')
			SKIN:Bang('!SetOption', 'MeterDay1', 'Text', tostring(lastMonthDays - 1))
			SKIN:Bang('!SetOption', 'MeterDay1', 'FontColor', '#NotThisMonthColor#')
		elseif dayOfWeekint == 4 then			-- Thursday
			SKIN:Bang('!SetOption', 'MeterDay4', 'Text', '1')
			SKIN:Bang('!SetOption', 'MeterDay3', 'Text', tostring(lastMonthDays))
			SKIN:Bang('!SetOption', 'MeterDay3', 'FontColor', '#NotThisMonthColor#')
			SKIN:Bang('!SetOption', 'MeterDay2', 'Text', tostring(lastMonthDays - 1))
			SKIN:Bang('!SetOption', 'MeterDay2', 'FontColor', '#NotThisMonthColor#')
			SKIN:Bang('!SetOption', 'MeterDay1', 'Text', tostring(lastMonthDays - 2))
			SKIN:Bang('!SetOption', 'MeterDay1', 'FontColor', '#NotThisMonthColor#')
		elseif dayOfWeekint == 5 then			-- Friday
			SKIN:Bang('!SetOption', 'MeterDay5', 'Text', '1')
			SKIN:Bang('!SetOption', 'MeterDay4', 'Text', tostring(lastMonthDays))
			SKIN:Bang('!SetOption', 'MeterDay4', 'FontColor', '#NotThisMonthColor#')
			SKIN:Bang('!SetOption', 'MeterDay3', 'Text', tostring(lastMonthDays - 1))
			SKIN:Bang('!SetOption', 'MeterDay3', 'FontColor', '#NotThisMonthColor#')
			SKIN:Bang('!SetOption', 'MeterDay2', 'Text', tostring(lastMonthDays - 2))
			SKIN:Bang('!SetOption', 'MeterDay2', 'FontColor', '#NotThisMonthColor#')
			SKIN:Bang('!SetOption', 'MeterDay1', 'Text', tostring(lastMonthDays - 3))
			SKIN:Bang('!SetOption', 'MeterDay1', 'FontColor', '#NotThisMonthColor#')
		elseif dayOfWeekint == 6 then 			-- Saturday
			SKIN:Bang('!SetOption', 'MeterDay6', 'Text', '1')
			SKIN:Bang('!SetOption', 'MeterDay5', 'Text', tostring(lastMonthDays))
			SKIN:Bang('!SetOption', 'MeterDay5', 'FontColor', '#NotThisMonthColor#')
			SKIN:Bang('!SetOption', 'MeterDay4', 'Text', tostring(lastMonthDays - 1))
			SKIN:Bang('!SetOption', 'MeterDay4', 'FontColor', '#NotThisMonthColor#')
			SKIN:Bang('!SetOption', 'MeterDay3', 'Text', tostring(lastMonthDays - 2))
			SKIN:Bang('!SetOption', 'MeterDay3', 'FontColor', '#NotThisMonthColor#')
			SKIN:Bang('!SetOption', 'MeterDay2', 'Text', tostring(lastMonthDays - 3))
			SKIN:Bang('!SetOption', 'MeterDay2', 'FontColor', '#NotThisMonthColor#')
			SKIN:Bang('!SetOption', 'MeterDay1', 'Text', tostring(lastMonthDays - 4))
			SKIN:Bang('!SetOption', 'MeterDay1', 'FontColor', '#NotThisMonthColor#')
		elseif dayOfWeekint == 0 then			-- Sunday
			dayOfWeekint = 7
			SKIN:Bang('!SetOption', 'MeterDay7', 'Text', '1')
			SKIN:Bang('!SetOption', 'MeterDay6', 'Text', tostring(lastMonthDays))
			SKIN:Bang('!SetOption', 'MeterDay6', 'FontColor', '#NotThisMonthColor#')
			SKIN:Bang('!SetOption', 'MeterDay5', 'Text', tostring(lastMonthDays - 1))
			SKIN:Bang('!SetOption', 'MeterDay5', 'FontColor', '#NotThisMonthColor#')
			SKIN:Bang('!SetOption', 'MeterDay4', 'Text', tostring(lastMonthDays - 2))
			SKIN:Bang('!SetOption', 'MeterDay4', 'FontColor', '#NotThisMonthColor#')
			SKIN:Bang('!SetOption', 'MeterDay3', 'Text', tostring(lastMonthDays - 3))
			SKIN:Bang('!SetOption', 'MeterDay3', 'FontColor', '#NotThisMonthColor#')
			SKIN:Bang('!SetOption', 'MeterDay2', 'Text', tostring(lastMonthDays - 4))
			SKIN:Bang('!SetOption', 'MeterDay2', 'FontColor', '#NotThisMonthColor#')
			SKIN:Bang('!SetOption', 'MeterDay1', 'Text', tostring(lastMonthDays - 5))
			SKIN:Bang('!SetOption', 'MeterDay1', 'FontColor', '#NotThisMonthColor#')
		end
		-- ===========================================================================================================================================================
		-- This section writes the right value for each of the dates in the current month
		n = dayOfWeekint
	for i = 1,currentMonthDays,1
		do
			SKIN:Bang('!SetOption', 'MeterDay'..n, 'Text', i)
			n = n + 1
		end
		-- ===========================================================================================================================================================
		-- This section writes the right values for each of the squares which contain values from the next month
		m = currentMonthDays + dayOfWeekint
	for d = 1,(43 - currentMonthDays - dayOfWeekint),1
		do 
			SKIN:Bang('!SetOption', 'MeterDay'..m, 'Text', d)
			SKIN:Bang('!SetOption', 'MeterDay'..m, 'FontColor', '#NotThisMonthColor#')
			m = m + 1
		end
	for p = 1,42,1
		do
			if p == todayDayOfMonth then
				todayCell = p + dayOfWeekint - 1
				SKIN:Bang('!SetOption', 'MeterDay'..todayCell, 'SolidColor', '#TodaySelected#')
			else
				SKIN:Bang('!SetOption', 'MeterDay'..p, 'SolidColor', '0,255,0,0')
			end
		end
end
		-- ===========================================================================================================================================================




-- IF THE CALENDAR IS MESSED UP, REFRESH. IF STILL NOT RIGHT, APPLY VALUES TO THE 7 EMPTY VARIABLES AT THE TOP AS FOLLOWS AND COMMENT 
-- OUT ANY SECTIONS WHICH CHANGE THESE VARIABLES
-- IF IT IS A LEAP YEAR AND IN MONTHS JAN AND FEB, TAKE 1 FROM TOTAL - SO TAKE 1 FROM ANY VALUE, AND THEN ADD BACK WHEN IT IS MARCH
--	===========
-- dayOfMonth = 1  (first day of month)
-- month = (use 1 for January, 2 for February, 3 for March etc.)
-- monthAdd = (Use Table)
--	======== TABLE 
--		month		|JAN|FEB|MAR|APR|MAY|JUN|JUL|AUG|SEP|OCT|NOV|DEC|
-- 		monthAdd	| 6 | 2 | 2 | 5 | 0 | 3 | 5 | 1 | 4 | 6 | 2 | 4 |
--	======== TABLE
-- decade = (use value from 1 to 9. Basically just use 1 because the decade is the 10s [2010 to 2019])
-- decadeAdd = (use table )
--	======== TABLE
--		decade		|1900|1910|1920|1930|1940|1950|1960|1970|1980|1990|2000|2010|2020|
--		decadeAdd	|  1 |  6 |  5 |  3 |  2 |  0 |  6 |  4 |  3 |  1 |  0 |  5 |  4 |
--	======== TABLE
-- yearUnit = (Last digit of current year [for 2017 use 7])
-- leapOffset = (use table)
--	======== TABLE
--  							yearunit 	|_0_|_1_|_2_|_3_|_4_|_5_|_6_|_7_|_8_|_9_|
--				leapOffset if decade is Even| 0 | 0 | 0 | 0 | 1 | 1 | 1 | 1 | 2 | 2 |
-- 				leapOffset if decade is Odd | 0 | 0 | 1 | 1 | 1 | 1 | 2 | 2 | 2 | 2 |
--	======== TABLE
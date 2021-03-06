module MyTimes
	  #  STRFTIME
	  #  %a - The abbreviated weekday name (``Sun'')
	  #  %A - The full  weekday  name (``Sunday'')
	  #  %b - The abbreviated month name (``Jan'')
	  #  %B - The full month name (``January'')
	  #  %c - The preferred local date and time representation
	  #  %d - Day of the month (01..31)
	  #  %e - Day of the month - no leading zero NOTE: need plugin for this to work in Win32
	  #  %H - Hour of the day, 24-hour clock (00..23)
	  #  %I - Hour of the day, 12-hour clock (01..12)
	  #  %i - Hour of day - no leading zero - NOTE: supposed to work w/ Win32 plugin - doesn't seem to
	  #  %j - Day of the year (001..366)
	  #  %m - Month of the year (01..12)
	  #  %M - Minute of the hour (00..59)
	  #  %p - Meridian indicator (``AM''  or  ``PM'')
	  #  %S - Second of the minute (00..60)
	  #  %U - Week number of the current year,
	  #       starting with the first Sunday as the first
	  #       day of the first week (00..53)
	  #  %W - Week number of the current year,
	  #       starting with the first Monday as the first
	  #       day of the first week (00..53)
	  #  %w - Day of the week (Sunday is 0, 0..6)
	  #  %x - Preferred representation for the date alone, no time
	  #  %X - Preferred representation for the time alone, no date
	  #  %y - Year without a century (00..99)
	  #  %Y - Year with century
	  #  %Z - Time zone name
	  #  %% - Literal ``%'' character
	  #
	  # Some basic shorthand time formats
	  # Use TimeObject.to_s(:shortcut)
	  # Time object
	  Time::DATE_FORMATS[:time_on_day] = "%I:%M %p on %A, %B %e, %Y"
	  Time::DATE_FORMATS[:date_with_time] = "%m/%d/%y (%I:%M %p)"
	  Time::DATE_FORMATS[:time] = "%I:%M %p"
	  Time::DATE_FORMATS[:date_at_time] = "%A, %B %e, %Y at %I:%M %p"
	  Time::DATE_FORMATS[:date] = "%B %e, %Y"
	  Time::DATE_FORMATS[:dotted_date] = "%m.%e.%y"
	  Time::DATE_FORMATS[:slashed_date] = "%m/%e/%y"
	  Time::DATE_FORMATS[:YYYYMMDD] = "%Y%m%d"
	  Time::DATE_FORMATS[:mon_yr] = "%b %Y"
	  # Date object
	  Date::DATE_FORMATS[:date] = "%B %e, %Y"
	  Date::DATE_FORMATS[:YYYYMMDD] = "%Y%m%d"

  end

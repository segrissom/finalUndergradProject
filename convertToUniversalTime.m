function univTime=convertToUniversalTime(time_zone,country)

if time_zone=='Atlantic Daylight'
    %https://www.mathworks.com/help/matlab/ref/strfind.html
elseif time_zone=='Atlantic Standard' or 'Eastern Daylight'
    utc=
elseif time_zone=='Eastern Standard' or 'Central Daylight'
    if country=='America' or 'USA' or 'United States'
    else continue 
elseif time_zone=='Central Standard' or 'Mountain Daylight'
    if country=='America' or 'USA' or 'United States'
    else continue
elseif time_zone=='Mountain Standard' or 'Pacific Daylight'
elseif time_zone=='Pacific Standard' or 'Alaska Daylight'
elseif time_zone=='Alaska Standard'
elseif time_zone=='Hawaii-Aleutian Standard'
elseif time_zone=='Samoa Standard'
elseif time_zone=='Greenwich Mean'
elseif time_zone=='British Summer' or 'Central Europe'
elseif time_zone=='Central European Summer' or 'Eastern European'
elseif time_zone=='Eastern European Summer' or 'Charlie' 
elseif time_zone=='Delta'
elseif time_zone=='Western Standard' 
elseif time_zone=='Western Summer'
elseif time_zone=='Central Standard'
elseif time_zone=='Central Summer'
elseif time_zone=='Eastern'
elseif time_zone=='Eastern Summer'
%I can add Asia and Africa later - these are the current most likely I guess

    %http://earthsky.org/astronomy-essentials/universal-time
    %https://sites.google.com/site/physics135/Home/announcements/universaltimetolocalsiderealtimeconversion
    %http://www.setileague.org/askdr/lmst.htm
    %http://calgary.rasc.ca/radecl.htm
    %http://aa.usno.navy.mil/faq/docs/GAST.php

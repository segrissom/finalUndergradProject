function [utchour,mon,day]=convertToUniversalTime(time_zone,country)
time=datetime(Y,M,D,H,MI,S)
mon=time(2);
day=time(3);
hour=time(4);
%I need to make sure hta thte days are converted correctly
if time_zone=='Atlantic Daylight'
    %https://www.mathworks.com/help/matlab/ref/strfind.html
    uhour=hour+3;
elseif time_zone=='Atlantic Standard' or 'Eastern Daylight'
    uhour=hour+4;
elseif time_zone=='Eastern Standard' or 'Central Daylight'
    if country=='America' or 'USA' or 'United States'
        uhour=hour+5;
    else continue 
elseif time_zone=='Central Standard' or 'Mountain Daylight'
    if country=='America' or 'USA' or 'United States'
        uhour=hour+6;
    else continue
elseif time_zone=='Mountain Standard' or 'Pacific Daylight'
    uhour=hour+7;
elseif time_zone=='Pacific Standard' or 'Alaska Daylight'
    uhour=hour+8;
elseif time_zone=='Alaska Standard'
    uhour=hour+9;
elseif time_zone=='Hawaii-Aleutian Standard'
    uhour=hour+10;
elseif time_zone=='Samoa Standard'
    uhour=hour+11;
%on to converting to European timezones to the utc
elseif time_zone=='Greenwich Mean'
    continue;
elseif time_zone=='British Summer' or 'Central Europe'
    uhour=hour-1;
elseif time_zone=='Central European Summer' or 'Eastern European'
    uhour=hour-2;
elseif time_zone=='Eastern European Summer' or 'Charlie' 
    uhour=hour-3;
elseif time_zone=='Delta'
    uhour=hour-4
%australian time zones
elseif time_zone=='Western Standard' 
    uhour=hour-8;
elseif time_zone=='Western Summer'
    uhour=hour-9;
elseif time_zone=='Central Standard'
    uhour=hour-9.3;
elseif time_zone=='Central Summer'
    uhour=hour-10.3;
elseif time_zone=='Eastern'
    uhour=hour-10;
elseif time_zone=='Eastern Summer'
    uhour=hour-11;
end
%i need to make sure that hte hours are actual hours
if uhour>24
    diff=uhour-24;
    utchour=diff;
    if day+1>28
       if month==2;
        month=3;
        day=1;
       else
       continue
       if day==30
        if mon==4 or mon==7 or mon==9 or mon==11
            mon=mon+1;
            day=1;
        else
        end
       if day==31
        if mon==12
            mon=1;
            day=1;
        else
            mon=mon+1;
            day=1;
        end
    end
elseif uhour<0
    utchour=abs(uhour);
    if day==1
        if mon==1
            mon=12;
        else
        mon=mon-1;
        end
    end
else 
    utchour=uhour
end
%I can add Asia and Africa later - these are the current most likely I guess

    %http://earthsky.org/astronomy-essentials/universal-time
    %https://sites.google.com/site/physics135/Home/announcements/universaltimetolocalsiderealtimeconversion
    %http://www.setileague.org/askdr/lmst.htm
    %http://calgary.rasc.ca/radecl.htm
    %http://aa.usno.navy.mil/faq/docs/GAST.php

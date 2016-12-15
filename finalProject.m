%Sarah Grissom
%Dr. Meaker
%Final Project

%need user's longitude and latitude in order to calculate location in
%comparison to stars
latitude=input('Please insert the latitude ');
longitude=input('Please insert your longitude ');
%the angle that the star paths make with respect to the horizon
celEquator=90-latitude;
%need to calculate the universal time
country=input('What country are you in?' );
timezone=input('What is your time zone? ');
utc=convertToUniversalTime(time_zone,country);
%need julian date in order to get what stars are in where
%need to pull out the things in order to do the julDay
utchour=utc(1);
mon=utc(2);
day=utc(3);
misc=datetime(Y,M,D,H,MI,S);
year=misc(1);
%http://aa.usno.navy.mil/faq/docs/GAST.php
julDay=gregToJulian(month,day,year);

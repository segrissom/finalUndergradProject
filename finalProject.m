%Sarah Grissom
%Dr. Meaker
%Final Project

%need user's longitude and latitude in order to calculate location in
%comparison to stars
latitude=input('Please insert the latitude ');
longitude=input('Please insert your longitude ');
%the angle that the star paths make with respect to the horizon
celEquator=90-latitude;
%need time and date in order to determine which stars are visible 
tme=clock;
year=tme(1);
month=tme(2);
day=tme(3);
hour=tme(4);
min=tme(5);
sec=tme(6);
%need julian date in order to get what stars are in where
%http://aa.usno.navy.mil/faq/docs/GAST.php
julDay=gregToJulian(month,day,year);
%need to know what Universal Time is
timezone=input('What is your time zone? ');

% Alrighty so I need to break this all down in to steps
% Initially I'm going to use the http://www.stellar-database.com/ for 
% some ideas at least and am going to try and link the program to that
%in order to obtain the stars within that region 

%First I'm going to need the coordinates (can do like 
%city & state and get latitude and longitude but that's later
% going to ask for latitude and longitude for now)of the person
%Then from there I can calculate the declination and ascension ???
%http://www.skyandtelescope.com/astronomy-resources/what-are-celestial-coordinates/
%http://astronexus.com/node/34
%http://abyss.uoregon.edu/~js/ast122/lectures/lec02.html

latitude=input('Please insert the latitude ');
longitude=input('Please insert your longitude ');

%The angle the star paths make with respect to the horizon 
%as they rise up or set down = 90 degrees minus the observer's latitude.
angle=90-latitude;
%Declination is the equivalent of latitude measured in degrees 
%from the celestial equator (0 to 90). Any point of the celestial 
%(i.e. the position of a star or planet) can be referenced with a unique 
%Right Ascension and Declination.
currentdate=date;
tme=clock;
time=tme(4,5);
%http://cseligman.com/laboratory/navcalc.htm
%Star right above is going to share the same latitude which would be zenith
%but there isn't always going to be a star right above
%need to figure out a way to gather stars with a zenith in the same area as
%the latitude and plot them all but i think i also need to consider the
%ascension time s and everything

%according to https://answers.yahoo.com/question/index?qid=20110825100632AAIcsEc
%at any given time you can technically see about 50% of the sky now just to
%figure that out

%I think that'd mean that you can see any star that crosses within the 90
%degree range from your latitude so now I need to understand the ascension
%adn all of that 
%https://lco.global/spacebook/equatorial-coordinate-system/
%this discusses right ascension and so far it's the one thing that really
%necessarily makes sense so far
%earth's galactic coordinates are https://www.quora.com/What-are-earths-galactic-coordinates
%Here is this one database http://www.stellar-database.com/
%https://github.com/astronexus/HYG-Database/blob/master/README.md
%this has many databases http://www.projectrho.com/public_html/starmaps/catalogues.php

%http://calgary.rasc.ca/radecl.htm
%Declination = degrees + (minutes / 60) + (seconds / 3600) and is the like
%up-down coordinate
%or LMST - your Local Mean Sidereal Time. This is just the star's Right Ascension value from the map for that star.
%I have julain date
%http://www.setileague.org/askdr/lmst.htm
%https://sites.google.com/site/physics135/Home/announcements/universaltimetolocalsiderealtimeconversion
%I need UT and then I can get GMST
%From GMST i can get
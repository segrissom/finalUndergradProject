function gmst=gsidereal(greenwichTime, longitude)
%calculating gmst according to http://aa.usno.navy.mil/faq/docs/GAST.php
%this states that
%The mean or apparent sidereal time locally is found by obtaining the 
%local longitude in degrees, converting it to hours by dividing by 15, and 
%then adding it to or subtracting it from the Greenwich time depending on 
%whether the local position is east (add) or west (subtract) of Greenwich.
firststep=longitude/15;
gmst=greenwichTime+firstep;

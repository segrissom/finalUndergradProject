function julianDate = gregToJuilian(month, day, year)
if month ==1 || month ==2
    year=year-1;
    month=month+12;
end
%need to remove any decimals that occur
%https://www.mathworks.com/matlabcentral/answers/38165-how-to-remove-decimal
%http://quasar.as.utexas.edu/BillInfo/JulianDatesG.html
A=year/100;
B=A/4;
C=2-A+B;
E=365.25*(year+4716);
F=30.6001*(month+1);
julianDate=C+day+E+F-1524.5;
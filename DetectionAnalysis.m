totalaccuracyint = 0;
totalserialint = 0;
for i = 1:100
    totalaccuracyint = totalaccuracyint + actualaccuracy(i);
    totalserialint = totalserialint + isserialdependence(i);
end
strcat(int2str(totalaccuracyint), '/', '100')
strcat(int2str(totalserialint), '/', '100')
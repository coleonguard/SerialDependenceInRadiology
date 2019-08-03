totalserial = 0;
totalincorrects = 0;
totalcorrects = 0;
for i=1:100
    totalserial = totalserial+wasserialdependence(i)
    if overtimeaccuracy(i) == 1
        totalcorrects = totalcorrects+1;
    else
        totalincorrects = totalincorrects +1;
    end
end
totalserial
totalincorrects/(totalincorrects+totalcorrects)
totalcorrects/(totalincorrects+totalcorrects)

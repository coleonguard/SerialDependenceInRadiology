reactiontimes_correct = 0;
reactiontimes_incorrect = 0;
reactiontimes_serial = 0;
totalaccuracy = 0;
totalinaccuracy = 0;
totalserial = 0;
for i=1:100
    if actualaccuracy(1,i) == 1
        reactiontimes_correct = reactiontimes_correct + reactionTimes(i,1);
        totalaccuracy = totalaccuracy+1;
    elseif actualaccuracy(1,i) == 0
        reactiontimes_incorrect = reactiontimes_incorrect + reactionTimes(i,1);
        totalinaccuracy = totalinaccuracy+1;
    end
    if isserialdependence(1,i) == 1
        reactiontimes_serial = reactiontimes_serial + reactionTimes(i,1);
        totalserial = totalserial+1;
    end
end
total = totalaccuracy+totalinaccuracy+totalserial;
totalreaction = reactiontimes_correct+reactiontimes_incorrect+reactiontimes_serial;
reactiontimes_correct/(totalreaction)*total/totalaccuracy
reactiontimes_incorrect/(totalreaction)*total/totalinaccuracy
reactiontimes_serial/(totalreaction)*total/totalserial
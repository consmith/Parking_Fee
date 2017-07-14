function [totalFee] = parkingfee(hoursParked)
        
    if hoursParked > 0
        ceil(hoursParked);
        if hoursParked <= 2
            totalFee = 4;
        elseif hoursParked <= 4
            totalFee = 7;
        else
            if hoursParked > 24
                totalFee = (24)+((((rem(hoursParked/24))*24)-4)+7));
            else
                totalFee = ((hoursParked-4) + 7);
            end
        end
    else
       hoursParked = hoursParked*-1;
       ceil(hoursParked);
        if hoursParked <= 2
            totalFee = 4;
            totalFee = totalFee +36;
        elseif hoursParked <= 4
            totalFee = 7;
            totalFee = totalFee +36;
        else
            if hoursParked > 24
                totalFee = ((floor(hoursParked)*24)+((((rem(hoursParked/24))*24)-4)+7));
                totalFee=totalFee + 36;
            else
                totalFee = ((hoursParked-4) + 7);
                totalFee = totalFee +36;
            end
        end
    end
end
       

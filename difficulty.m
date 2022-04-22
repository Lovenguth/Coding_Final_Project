function [painscale,long] = difficulty

painscale = 0;
long = 0;

m = menu("Difficulty","Fair/Regular","Realistic","Custom");
switch m
    case 1 %fair is possible
        painscale = 2;
        long = 6;
        i=2;
    case 2 %realistic is not possible (there's not enough turns to clear the # of trash)
        painscale = 3;
        long = 7;
        i=2;
    case 3
        i=1;
end

if i==1
    clc
    disp("For a possible game the length of the conveyor belt should be 3 times as long as the possible number of trash")
    g=1;
    while g==1
        painscale = input("How much possible trash per row? (1-100) ");
        if painscale<1 || painscale>100
            g=1;
        else
            g=2;   
        end
    end
    g=1;
    while g==1;
        long = input("How long is the conveyor belt? (3-100) ");
        if long<3 || long>100
            g=1;
        else
            g=2;   
        end
    end
end
clc

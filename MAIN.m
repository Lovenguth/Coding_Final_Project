%TEAM 10
%MAIN FUNCTION
%------
clear
clc
%------
loop=1;
i=1;
while loop==1
    
    if i==1
        disp("Welcome")
        pause(2)
        disp("Please chose an option")
        pause(2)
    elseif i>=10
        clc
        disp("You've been here for awhile you should probably go do something else...")
    else
        clc
        disp('Welcome back!')
    end
    
    m=menu("What would you like to do?","Play Game","Learn","The other thing","END");
    
    switch m
        case 1
            PLAYME
            i=i+1;
        case 2
            disp('fun2')
            pause(2)
            i=i+1;
        case 3
            disp('fun3')
            pause(2)
            i=i+1;
        case 4
            pause(2)
            loop=2;
    end

end

disp('end credits')
% win or lose you end up in the lose function because in this current waste situation, 
%we all lose

function losefunc(extracty,v)

%testing purposes
%extract=1;
%v=2;
pause(3)
clc

%skipped if coming from the win functin
if v==1
    if extracty==1
        disp(['You missed ' num2str(extracty) ' piece of trash'])
    else
        disp(['You missed ' num2str(extracty) ' pieces of trash'])
    end
    pause(3)
    clc
else
    clc
end

%displays
disp("That was hard huh")
pause(2)
disp("The reality is that even if you didn't miss anything, there are hundreds of these facilities, each facing this same problem")
pause(2)
disp("There is a solution however...")
pause(2)
disp("...and it has nothing to do with what you did today")
pause(3)
clc

disp("If we can stop this issue at the source...")
pause(2)
disp("...and make sure that we only recycle items that don't have food waste in them, we can avoid this whole tiring operation")
pause(5)
clc



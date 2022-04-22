%Welcome to the game aspect of the project!
%The idea is that you are working at a recycling plant and there's a
%conveyor belt carrying plasitc to get recycled. However, the plastic has
%food waste in it so it is your job to get it off so it doesn't contaminate
%the rest. An array with non-zero integers representing trash will be
%displayed and the user will enter the location they wish to grab. After
%each turn the program will randomly determine (1 in 4 chance) if you will
%miss the trash when you grab it. After, the belt will move and the values
%will increase one column. The game continues in this manner till you've
%picked up all the trash or some amount gets to the end of the belt.

clc
pause(2)

%hello
disp("Welcome! Please choose a difficulty!")

%difficulty caller
[painscale,long]=difficulty;

%difficulty defaults (comment out if calling function)
% painscale=3;
% long=7;

%generates grid of zeros
grid = zeros(3,long);
largeness=size(grid);
s=largeness(1,2);

%for game learning purposes
learngame(grid);

%generates a grid of radnom values for trash placement
trashradnomizer = randi([1,painscale],3,1);

%sends the random grid to the trash placer function
[gridm,trashcounter] = trashplacer(trashradnomizer,grid);

%initial displays
disp("Here's the conveyor belt!")
pause(1.5)
disp(gridm)
pause(1.5)
disp('Get to work!')
pause(2)

%--------
turns=long-1; %#turns equal to the number of columns-1 as you dont play the last column
countturn=1; %turn counter gets set equal to 0
col=0; %starts at collumn 0

%loops for each turn till the trash gets to the end or you clear everything
while countturn<turns+1 
    unco=0; %uncordinated variable
    
    loseturn = randi(4,1,1);
   
    [gridmnew,trashcounternew,miss] = eliminator(gridm,trashcounter,s); %user's turn to grab tash (overwrite by the loop below if loseturn hits
    if loseturn==4
            disp('*You were a little uncordinated a missed the trash!*')
            unco=1;
            %doesn't accept the new gridm
            %doesn't accpet the new trashcount
    else
        disp(gridmnew)
        gridm=gridmnew; %accepts the new grid and overwrites the original to the new
        trashcounter=trashcounternew; %accepts the new trashcount and overwrites the original to the new
    end
    
    if unco==0
        if miss==1
            disp("There was no trash where you reached! ")
        else
            disp("*You picked it up!*")
        end
    end
    
% old iteration of code
%     if loseturn==4
%         disp('You were a little uncordinated a missed the trash!')
%     else
%         [gridm,trashcounter] = eliminator(gridm,trashcounter);
%     end
    
    
    pause(2)
    disp("*Belt is moving*")
    pause(1)
    
    
    
    
    %computer turn 
    col=col+1;
    [gridm,col] = trashjumper(gridm,col);
    disp(gridm)
    %disp('end turn')
    pause(1.5)
    countturn=countturn+1;
    %disp(trashcounter)
    
    if trashcounter==0
        countturn=100;
            winfunc
    end
    
    %scans the last column for values to tally up how much you've lost by
    if gridm(1,s)>0 || gridm(2,s)>0 || gridm(3,s)>0
        extracty=gridm(1,s)+gridm(2,s)+gridm(3,s);
 
        if trashcounter==0 && extracty==0
            countturn=100;
            winfunc
            
        elseif extracty>0
            disp("Uh Oh...")
            countturn=100;
            v=1;
            losefunc(extracty,v)
        end
    end
end
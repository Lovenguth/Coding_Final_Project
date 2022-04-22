function learngame(grid)

%for testing purposes
%grid = zeros(3,6);
clc

%generates manual trash on conveyor belt
grid1=grid;
grid1(1,1)=1;
grid2=grid;
grid2(1,1)=2;

%initializes looping variable
goagain=1;

%displays
disp("Welcome to your new life!")
pause(2);
disp("You are a worker at the recycling plant")
pause(2);
disp("This is you!")
imshow("Worker.jpg")
pause(1.5);
clc
disp("Looks fun huh")
pause(2)
disp("Well your job is simple...")
pause(2)
disp("See that conveyor belt?")
pause(2)
disp("Well here it is too!")
disp(grid)
pause(2)
clc
disp("This is 1 piece of trash")
pause(1.5)
%imshow("Mirror.jpeg")
imshow("1Trash.jpeg")
pause(1.5)
disp("It looks like this on the conveyor belt")
pause(1.5)
disp(grid1)
pause(1.5)
disp("Cool huh")
pause(1.5)
disp("This is 2 pieces of trash")
pause(1.5)
%imshow("DoubleWideMirror.jpeg")
imshow("2Trash.png")
pause(1.5)
disp("It looks like this on the conveyor belt")
pause(1.5)
disp(grid2)
pause(1.5)
disp("Even cooler huh?")
pause(3)
clc
disp("Well you're wrong")
pause(1.5)
disp("Those pieces of trash have food waste in them and it's your job to get them off the conveyor belt!")
pause(2)

while (goagain==1)
    disp("To do this you will enter the row and column of the trash")
    pause(2)
    disp("For example:")
    pause(2)
    clc
    disp("For example:")
    disp(grid1)
    disp("To clear this piece of trash you will enter:")
    pause(2)
    disp("What row would you like? 1")
    disp("What column would you like? 1")
    pause(2)
    disp("If there was trash in that cell, which there was, it will display...")
    pause(2)
    disp(grid)
    pause(3)
    clc
    disp("If there are two pieces of trash...")
    disp("For example:")
    disp(grid2)
    pause(1.5)
    disp("To clear this piece of trash you will enter:")
    pause(2)
    disp("What row would you like? 1")
    disp("What column would you like? 1")
    pause(2)
    disp("If there was trash in that cell, which there was, it will display...")
    pause(2)
    disp(grid1)
    disp("You can only remove one piece of trash at a time")
    pause(3.5)
    clc
    disp("Amazing! You're ready to go on the line and help get these contaminates off the conveyor")
    pause(2)
    goagain = menu("Would you like to go over that again?","Yes please","No thank you, let's go to work!");
    switch goagain
        case 1
            goagain=1;
        case 2
            goagain=2;
    end 
end
clc
disp("Wonderful choice!")
pause(2)
disp("Oh one last thing...")
pause(2)
disp("There will be more than on piece of trash on the belt...")
pause(2)
disp("...and it of course moves")
pause(2)
disp("Just make sure you clear all the trash before it get's to the end!")
pause(2.5)
clc

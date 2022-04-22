%THE BEAUTIFUL TRASH PLACEMENT FUNCTION
function [grid,trashcounter] = trashplacer(values,grid);

%trashcounter just counts how much trash was generated
trashcounter=0;

%each row of the radnom 3 by 1 grid correlates to each row in the game grid
grid(1,1)=values(1);
trashcounter=trashcounter+values(1);
grid(2,1)=values(2);
trashcounter=trashcounter+values(2);
grid(3,1)=values(3);
trashcounter=trashcounter+values(3);


% switch values(2)
%     case 1
%         grid(2,1)=1;
%         trashcounter=trashcounter+1;
%     case 2
%         grid(2,1)=2;
%         trashcounter=trashcounter+2;
% end
% 
% switch values(3)
%     case 1
%         grid(3,1)=1;
%         trashcounter=trashcounter+1;
%     case 2
%         grid(3,1)=2;
%         trashcounter=trashcounter+2;
% end


function [gridm,col] = trashjumper(gridm,col)
i=1;

while i<=3
    row=i;
    if gridm(row,col)==0
        i=i+1;
    else
        newval=gridm(row,col);
        gridm(row,col)=0;
        gridm(row,col+1)=newval;
        i=i+1;
    end
end
% old iteration of the code
%         switch gridm(row,col)
%             case 0
%                 i=i+1;
%             case 1
%                 gridm(row,col)=0;
%                 gridm(row,col+1)=1;
%                 i=i+1;
%             case 2
%                 gridm(row,col)=0;
%                 gridm(row,col+1)=2;
%                 i=i+1;
%         end
%     
%     elseif i==2
%         row=2;
%         switch gridm(row,col)
%             case 0
%                 i=i+1;
%             case 1
%                 gridm(row,col)=0;
%                 gridm(row,col+1)=1;
%                 i=i+1;
%             case 2
%                 gridm(row,col)=0;
%                 gridm(row,col+1)=2;
%                 i=i+1;
%             
%         end
% 
%     elseif i==3
%         row=3;
%         switch gridm(row,col)
%             case 0
%                 i=i+1;
%             case 1
%                 gridm(row,col)=0;
%                 gridm(row,col+1)=1;
%                 i=i+1;
%             case 2
%                 gridm(row,col)=0;
%                 gridm(row,col+1)=2;
%                 i=i+1;
%             
%         end
%     end
% end
    
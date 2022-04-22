function [gridm,trashcounter,miss] = eliminator(gridm,trashcounter,s)
i=1;
miss=0;
while i==1
    rowloc = input('What row would you like? ');
    if rowloc>0 && rowloc<4
        i=2;
    else
        i=1;
    end
end

i=1;
while i==1
    colloc = input('What column would you like? ');
    if colloc>0 && colloc<s
        i=2;
    else
        i=1;
    end
end


if gridm(rowloc,colloc)>0
    gridm(rowloc,colloc)=gridm(rowloc,colloc)-1;
    trashcounter=trashcounter-1;
else
    miss=1;
end
function bool = CheckForEdgePixel(img,x,y)

for i = -1:1
    for j = -1:1
        if(img(x+i,y+j) == 1)
            bool = true;
        end
    end
end

end
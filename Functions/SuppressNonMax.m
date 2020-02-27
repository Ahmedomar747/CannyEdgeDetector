function SuppressImg = SuppressNonMax(MagImg,GradDir)

width = size(MagImg,1);
height = size(MagImg,2);
colors = size(MagImg,3);



SuppressImg = zeros(size(MagImg));
for cl = 1:colors
for i = 2:width-1
    for j = 2:height-1
        if (MagImg(i,j) > 0)
            [x,y] = GetGradientDirection(GradDir(i,j));
            neighbors = MagImg(i+x,j+y);
            if (MagImg(i,j) > neighbors)
                SuppressImg(i,j) = MagImg(i,j);
            end
        end
    end
end



end
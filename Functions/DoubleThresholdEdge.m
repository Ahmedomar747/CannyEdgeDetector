function Edge_Img = DoubleThresholdEdge(Img,thr)

T2 = max(thr) * 255;
T1 = min(thr) * 255;

Edge_Img = zeros(size(Img));

width = size(Img,1);
height = size(Img,2);


Bin_Img_T2 = (Img*255 > T2);
Bin_Img_T1 = (Img*255 > T1 & Img*255 <= T2);
 

for i = 2:width-1
    for j = 2:height-1
        if ( (Bin_Img_T1(i,j) & max(Bin_Img_T2(i-1:i+1,j-1:j+1))) | (Bin_Img_T2(i,j)) )
            Edge_Img(i,j) = 1;
        end
    end
end


end


function Canny_Img = CannyEdgeDetection(img,thr,sigma)

guassian_filter = guassian(sigma);

guass_img = conv2(img/255,guassian_filter);
 
[BW,thresh,gv,gh] = edge(img,'Prewitt');
 
mag_img = sqrt(gv.^2 + gh.^2);
angel_img = atan(gv ./ gh) .* 180 / pi;
 

Suppressed_Img = SuppressNonMax(mag_img,angel_img);
 

 
Canny_Img = DoubleThresholdEdge(Suppressed_Img,thr);

end
 
clear
clc

img = imread('cameraman.tif');
s = 1.4;

thr = [15 40];
 guassian_filter = guassian(s);

 guass_img = conv2(img/255,guassian_filter);
 
 [BW,thresh,gv,gh] = edge(img,'Prewitt');
 
 mag_img = sqrt(gv.^2 +gh.^2);
 angel_img = atan(gv/gh) * 180 / pi;
 
 
 Suppressed_Img = SuppressNonMax(mag_img,angel_img);
 
 T2 = max(thr);
 T1 = min(thr);
 
 Bin_Img_T2 = (Suppressed_Img > T2);
 Bin_Img_T1 = (Suppressed_Img > T1 && Suppressed_Img < T2);
 
 
 
 

%  subplot(1,2,1);
%  imshow(mag_img);
%  subplot(1,2,2);
%  imshow(newimg);

clear
clc

addpath('Functions');
addpath('Dataset');


v = VideoReader('task1_31888.mp4');

s = 1.4;
thr = [0.7 0.3];

numb_of_frames = v.Duration * v.FrameRate;


edge_v = VideoWriter('Output/task1_31888_Edge'); 
open(edge_v);


while hasFrame(v)
    frame = readFrame(v);
    Gframe = RGB2Gray(frame);
    Eframe = CannyEdgeDetection(double(Gframe),thr,s);
    writeVideo(edge_v,Eframe);
end

close(edge_v);



 


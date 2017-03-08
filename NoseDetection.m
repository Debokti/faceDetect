%Nose Detection
NoseDetect = vision.CascadeObjectDetector('Nose','MergeThreshold',16);
I= imread(filename);

BB=step(NoseDetect,I);


figure,
imshow(I); hold on
for i = 1:size(BB,1)
    rectangle('Position',BB(i,:),'LineWidth',4,'LineStyle','-','EdgeColor','b');
end
title('Nose Detection');
hold off;
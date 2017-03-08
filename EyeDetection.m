%To detect Eyes
EyeDetect = vision.CascadeObjectDetector('EyePairBig');

%Read the input Image
I= imread(filename);

BB=step(EyeDetect,I);



figure,imshow(I);
rectangle('Position',BB,'LineWidth',4,'LineStyle','-','EdgeColor','b');
title('Eyes Detection');
Eyes=imcrop(I,BB);
figure,imshow(Eyes);
% webcamlist;
cam = webcam('HD WebCam');
cam.Resolution = '1280x720'; 

% maximum resolution supported by my Laptop Camera
xlabel('X','fontsize',20);
set(gca,'xcolor',get(gcf,'color'));
set(gca,'xtick',[]);
%hiding x axes and ticks
ylabel('Y','fontsize',20);
set(gca,'ycolor',get(gcf,'color'));
set(gca,'ytick',[]);
%hiding y axes and ticks
preview(cam);

img = snapshot(cam);
image(img);
clear('cam');
xlabel('X','fontsize',20);
set(gca,'xcolor',get(gcf,'color'));
set(gca,'xtick',[]);

xlabel('Y','fontsize',20);
set(gca,'ycolor',get(gcf,'color'));
set(gca,'ytick',[]);

prompt2='Enter name for fig file:';
figureName=input(prompt2,'s');
savefig(figureName);
run('dotFIG_to_dotJPG');


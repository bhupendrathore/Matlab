close all;
clear;
  a=imread('590717.png'); % this image should be in your directory  or paste the address of your photo
  a = imresize(a,[700 700]);
 imshow(a);
 rectangle('position',[1 1 700 700],'curvature',[1 1]);


hour_dgt = 0:pi/6:2*pi;
c=1;

for i=1:12
    theta = hour_dgt(i)-pi/3;
    x_un = 350*0.9*cos(theta)+350;
    y_un = 350*0.9*sin(theta)+350;
    text(x_un,y_un,num2str(c));
    hold on;
    c=c+1;
end
while (true)
    t = clock;
    hr = t(4);
    if hr>12
        hr = hr-12;
    end
        
    min = t(5);
    sec = t(6);
    hour = hr*(pi/6)+ ceil(min/12)*(pi/30) - pi/2;
    
    
   
    x=350*0.3*sin(hour)+350;
    y=350*0.3*cos(hour)+350;
    
   
    xvalue = [350 x];
    yvalue = [350 y];
    p1=plot(yvalue,xvalue,'LineWidth',3);
    hold on;
    minute  = min*(pi/30)- pi/2;
    x1 = 350*0.6*sin(minute)+350;
    y1 = 350*0.6*cos(minute)+350;
    xvalue1 = [350 x1];
    yvalue1 = [350 y1];
    p2=plot(yvalue1,xvalue1,'LineWidth',2);
    second = sec*(pi/30)- pi/2;
    x2 =350*0.8*sin(second)+350;
    y2 = 350*0.8*cos(second)+350;
    xvalue2 = [350 x2];
    yvalue2=[350 y2];
    p3=plot(yvalue2,xvalue2,'LineWidth',2);
    
 pause(1);
  delete(p1);
  delete(p2);
  delete(p3);
end

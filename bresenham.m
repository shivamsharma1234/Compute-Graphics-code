function []=bresenham(x0,y0,xf,yf)
% x0 = input('Input Intial Coordinates x0');
% y0 = input('Input Intial Coordinates y0');
% xf = input('Input final coordinates xf');
% yf = input('Input final coordinates yf');
delx = xf-x0;
dely = yf - y0;
x = x0:xf ; 
y = [y0];
p = [];
p(1) = 2*dely-delx;
for i=2:length(x)
    if p(i-1)<0
        p(i)=p(i-1)+2*dely;
    else
        p(i)=p(i-1)+2*dely-2*delx;
    end
end
for i=2:length(x)
   if(p(i-1)<0) 
   y(i) = y(i-1);
   else
       y(i)=y(i-1)+1;
   end
end
[x',y']

plot(x,y)

end
function [m] = dda(x0,y0,xf,yf)
% x0 = input('Input Intial Coordinates x0 ');
% y0 = input('Input Intial Coordinates y0 ');
% xf = input('Input final coordinates xf ');
% yf = input('Input final coordinates yf ');
i = 2;
x = [x0];
y = [y0];
m = (yf-y0)/(xf-x0);
if m<=1
   while(x(i-1)<xf)
       x(i) = x(i-1)+1;
       y(i) = round(y(i-1)+m);
       i=i+1;
   end
else 
    while(y(i-1)<yf)
       x(i) = round(x(i-1)+1/m);
       y(i) = y(i-1)+1;
       i=i+1;
    end    
end
m=[x' y'];
plot(x,y)
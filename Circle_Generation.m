clear all;
clc;

r = input('Enter large value for (eg:r=100) Radius r ');
x0=0;
y0=r;
x(1) = x0;
y(1) = y0;
pk=@(x,y)((x+1)^2 +(y-1/2)^(2)-r^2);
d(1)=(pk(x(1),y(1)));
for i=2:100
    
    if d(i-1)<0
        x(i)=x(i-1)+1;
        y(i)=y(i-1);
        
    else
        x(i)=x(i-1);
        y(i)=y(i-1)-1; 
    end
    d(i)=(pk(x(i),y(i)));
end
d'
[ x' y']
plot(x,y,'r*')
hold on 
plot(-x,-y,'b*')
plot(-x,y,'cy*')
plot(x,-y,'r*')
plot(y,x,'b*')
plot(-y,-x,'r*')
plot(-y,x,'b*')
plot(y,-x,'r*')
axis square
function [ output_args ] = Reflection_aboutany_line_shivam( )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

% this is reflection of a point about any line y=mx+c
Coordnates=input('enter coordinates [x y]:');

disp('Consider Reflection about Line y=mx+c:')
m=input('Enter slope of line about which reflection to be taken:');
c=input('Enter the value of c:');

%transformation matrix for reflection of a point
X=[1 0 0;0 1 c;0 0 1]*[((1-m^2)/(1+m^2)) 2*m/(1+m^2) 0;2*m/(1+m^2) (m^2-1)/(1+m^2) 0;0 0 1]*[1 0 0;0 1 -c;0 0 1]*[Coordnates(1);Coordnates(2);1];
disp('The reflected coordinates are :')
[X(1) X(2)]

%plot for line
x_index=min(Coordnates(1),X(1)):max(Coordnates(1),X(1));
y_index=m*x_index+c;
plot(x_index,y_index,'r')

hold on
%plot for reflected point
plot([Coordnates(1),X(1)],[Coordnates(2),X(2)],'*')
axis('square')
end


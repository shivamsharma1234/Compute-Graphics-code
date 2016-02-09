
%Sierpinshki  Gasket
%sequencial triangle
clear all;
clc;
%input x=0 y=r r=100
disp('enetr Coordinates of triangle')
x=input('enter vertex center x=0');
y=input('enter vertex y');
%[x(2),y(2)]=input('enter vertex 2');
%[x(3),y(3)]=input('enter vertex 3');
[x(1) y(1) 1;x(2) y(2) 1 ;x(3) y(3) 1]

     x0=input('enter x value of P');
     y0=input('enter y valueof P');
     i=0;
     plot(x,y)
     hold on
     j=1;
 if det([x(1) y(1) 1;x(2) y(2) 1 ;x(3) y(3) 1])~=0
     disp('yes')
      while(i<1000)  
         c=mod(j,4);
         
         if c==0
             c=1;
             j=1;
         end

         plot([x(c) x0],[y(c) y0],'r-')
         %plot(x0,y0,'*')
         mid_x=(x(c)+x0)/2;
         mid_y=(y(c)+y0)/2;
         x0=mid_x;
         y0=mid_y;
         i=i+1;
         j=j+1;
         plot(x0,y0,'*')
         c=mod(j,4);
         
         if c==0
             c=1;
             j=1;
         end
         plot([x(c) x0],[y(c) y0],'b-')
         hold on
      end
 end


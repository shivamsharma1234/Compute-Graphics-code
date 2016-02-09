function [ output_args ] = Perspective_clipping_volume_3D_shivam( )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
% Shivam Sharma
% Btech IT with mathematical innovation
clc
clear all;
 X=input('Enter x coordinates of P1 and P2 line[x1 x2 ]:');
 Y=input('Enter y coordinates of P1 and P2 line[y1 y2]:');
 Z=input('Enter z coordinates of P1 and P2 line[z1 z2 ]:');


    Temp_x=X;
    Temp_y=Y;
    Temp_z=Z; 

for j=1:6
    L1=Test(Temp_x,Temp_y,Temp_z,numel(Temp_x));
  g=0;
    for i=1:numel(Temp_x)-1
         if sum(L1(i,:))==0 && sum(L1(i+1,:))==0
             %[X' Y' Z']
             %i
             %i+1
             disp('Both are in the same region same')
             
             

         elseif (sum(L1(i,:))~=0 && sum(L1(i+1,:))~=0) && sum(and(L1(i,:),L1(i+1,:)))~=0
            [X' Y' Z']
            %i
            %i+1
             disp('Both are out of region')
             Temp_x(i)=[]; 
             Temp_y(i)=[];
             Temp_z(i)=[]; 
             g=1;
         else
             %i
             %i+1
             disp('partial')
             [X' Y' Z']
             Temp_x=[Temp_x(1:i) (Temp_x(i)+Temp_x(i+1))/2  Temp_x(i+1:end)];
             Temp_y=[Temp_y(1:i) (Temp_y(i)+Temp_y(i+1))/2  Temp_y(i+1:end)];
             Temp_z=[Temp_x(1:i) (Temp_z(i)+Temp_z(i+1))/2  Temp_z(i+1:end)] ;  
             g=1;
         end
         if g==1
             break;
         end
    end
    
    X=Temp_x;
    Y=Temp_y;
    Z=Temp_z;

end
[X' Y' Z']
disp('')
disp('The End Points are :')
[[X(1) X(end)]' ,[Y(1) Y(end)]' ,[Z(1) Z(end)]']

end

function [L1] = Test(X,Y,Z,P)
%Var=[X_R X_L Y_T Y_B Z_H Z_y]
Var(1)=500;%input('Enter XR:');
Var(2)=-500;%input('Enter XL:');
Var(3)=500;%input('Enter YT:');
Var(4)=-500;%input('enter YB:');
Var(5)=357.14;%input('Enter ZH:');
Var(6)=-500;%input('Enter Zy :');
Z_cp=2500;%input('Enter Zcp i.e center of projection:');


syms z x y
X_k=((z-Z_cp))/(Var(6)-Z_cp);

Eq_fR=@(x,z)(x-((z-Z_cp))/(Var(6)-Z_cp)*Var(1));%matlabFunction(x-X_k*Var(1));%eq fr
Eq_fL=@(x,z)(x-((z-Z_cp))/(Var(6)-Z_cp)*Var(2));%matlabFunction(x-X_k*Var(2));%((z-Z_cp)*X_L)/(Z_y-Z_cp);

Eq_fT=@(y,z)(y-((z-Z_cp))/(Var(6)-Z_cp)*Var(3));%matlabFunction(y-X_k*Var(3));%((z-Z_cp)*Y_T)/(Z_y-Z_cp);
Eq_fB=@(y,z)(y-((z-Z_cp))/(Var(6)-Z_cp)*Var(4));%matlabFunction(y-X_k*Var(4));%((z-Z_cp)*Y_B)/(Z_y-Z_cp);

Eq_fN=@(z)(z-Var(5));%matlabFunction(z-Var(5));
Eq_fF=@(z)(z-Var(6));%matlabFunction(z-Var(6));

% s=matlabFunction(Eq_fR)
L1=zeros(P,6);

 for i=1:P
    if Eq_fR(X(i),Z(i)) >=0 
        L1(i,5)=1;
    else
        L1(i,5)=0;
    end
    if Eq_fL(X(i),Z(i)) <=0 
        L1(i,6)=1;
    else
        L1(i,6)=0;
    end
    if Eq_fT(Y(i),Z(i))>=0
        L1(i,3)=1;
    else
        L1(i,4)=0;
    end
    if Eq_fB(Y(i),Z(i))<=0
        L1(i,4)=1;
    else
        L1(i,4)=0;
    end

    
    if Eq_fN(Z(i))>=0
        L1(i,2)=1;
    else
        L1(i,2)=0;
    end
    if Eq_fF(Z(i))<=0
        L1(i,1)=1;
    else
        L1(i,1)=0;
    end
    
    [Eq_fR(X(i),Z(i)) Eq_fT(Y(i),Z(i)) Eq_fN(Z(i)) Eq_fN(Z(i))];
     
 end
 
 
end


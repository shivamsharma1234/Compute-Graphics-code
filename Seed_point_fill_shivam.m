function [] = Seed_point_fill_shivam()
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

%Coder:
%Shivam Sharma
%Candidate of Btech IT(with mathematical innovation)
%Cluster Innovation Center , University Of Delhi


%   Detailed explanation goes here'
% Enter the X-coordinates of the verices: [0 25 50 0]
% Enter the Y-coordinates of the vertices: [0 25 0 0]
% Enter Cordinates to be checked[30 10]

% Enter the X-coordinates of the verices: [1 1 5 8 8 1]
% Enter the Y-coordinates of the vertices: [1 7 3 6 1 1]
% Enter Cordinates to be checked[2 3]

clear all;
clc

x = input('Enter the X-coordinates of the verices: ');
y = input('Enter the Y-coordinates of the vertices: ');
plot(x,y)
hold on
X=input('Enter x for start point:');
Y=input('Enter y for start point:');

Stack_x=[];
Stack_y=[];

flag=1;
flag2=0;
i=1;
while flag==1
    
  
    size(Stack_x)
    temp=find(Stack_x,X(i));
    
    
    if isempty(temp)
        disp('1')
        flag2=1;
    else
        if isempty(find(Stack_y(temp),Y(i)))
            disp('2')
            flag2=1;
        else
           
            find(Stack_y(temp),Y(i))
            disp('3')
            flag=1;
        end
    end

            if Inside_outside(x,y,[X(i) Y(i)])==2 && flag2==1
                hold on

                if Inside_outside(x,y,[(X(i)-1) Y(i)])==2
                    Stack_x=[Stack_x ;(X(i)-1)];
                    Stack_y=[Stack_y ;Y(i)];
                    plot(X(i)-1,Y(i),'*r')
                end
                if Inside_outside(x,y,[(X(i)) (Y(i)-1)])==2
                    Stack_x=[Stack_x ;(X(i))];
                    Stack_y=[Stack_y ;(Y(i)-1)];
                    plot(X(i),Y(i)-1,'*r')
                end
                if Inside_outside(x,y,[(X(i)) (Y(i)+1)])==2
                    Stack_x=[Stack_x ;(X(i))];
                    Stack_y=[Stack_y ;(Y(i)+1)];
                    plot(X(i),Y(i)+1,'*r')
                end
                if Inside_outside(x,y,[(X(i)-1) (Y(i)+1)])==2
                    Stack_x=[Stack_x ;(X(i)-1)];
                    Stack_y=[Stack_y ;(Y(i)+1)];
                    plot(X(i)-1,Y(i)+1,'*r')
                end
                if Inside_outside(x,y,[(X(i)+1) (Y(i)+1)])==2
                    Stack_x=[Stack_x ;(X(i)+1)];
                    Stack_y=[Stack_y ;(Y(i)+1)];
                    plot(X(i)+1,Y(i)+1,'*r')
                end
                if Inside_outside(x,y,[(X(i)+1) (Y(i)-1)])==2
                    Stack_x=[Stack_x ;(X(i)+1)];
                    Stack_y=[Stack_y ;(Y(i)-1)];
                    plot(X(i)+1,Y(i)-1,'*r')
                end
                if Inside_outside(x,y,[(X(i)-1) (Y(i)-1)])==2
                    Stack_x=[Stack_x ;(X(i)-1)];
                    Stack_y=[Stack_y ;(Y(i)-1)];
                    plot(X(i)-1,Y(i)-1,'*r')
                end
                if Inside_outside(x,y,[(X(i)+1) Y(i)])==2
                    Stack_x=[Stack_x ;(X(i)+1)];
                    Stack_y=[Stack_y ;Y(i)];
                    plot(X(i)+1,Y(i),'*r')
                end
                [Stack_x'  Stack_y'];
                size(Stack_x)
                f=input('enter')
                plot(Stack_x(end),Stack_y(end),'*b')
                X(i+1)=Stack_x(end);
                Y(i+1)=Stack_y(end);
                Stack_x(end)=Stack_x(size(Stack_x,1)-1,1);
                Stack_y(end)=Stack_y(size(Stack_x,1)-1,1);
                size(Stack_x)
                
                

            end
    
    i=i+1;
end




end


function [Out1]=Inside_outside(x,y,Check)

L=0;
R=0;
   
        for i=1:numel(x)-1
                
                [X,Y]=(draw(x(i),y(i),x(i+1),y(i+1)));
                M=find(Y==Check(1,2));
                if Check(1,1)==X(M)
                    L=[];R=[];                    
                else
                    
                        if ~isempty(M)                    
                          if X(M)>=Check(1,1)
                              L=L+1;
                          else
                              R=R+1;
                          end
                        end
                end
                
                  
        end
         
        
         if isempty(R) && isempty(L) 
             %disp('Point is on the line')
             Out1=1;   
         elseif mod(L,2)~=0 && mod(R,2)~=0  
             %disp('Point is Inside')
             Out1=2;      
         else
            Out1=3;
            %disp('Point is Outside')  
         end
               
     
end
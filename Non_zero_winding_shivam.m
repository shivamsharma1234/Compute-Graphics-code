function [ output_args ] = Non_zero_winding_shivam()
%UNTITLED11 Summary of this function goes here
%   Detailed explanation goes here

clear all;
clc

x = input('Enter the X-coordinates of the verices: ');
y = input('Enter the Y-coordinates of the vertices: ');
L=0;
R=0;
plot(x,y)
hold on
flag=1;
    while 1
        
    Check=input('Enter Cordinates to be checked :');
    plot(Check(1,1),Check(1,2),'r*')
    hold on
    
        for i=1:numel(x)-1
                
                [x(i),y(i),x(i+1),y(i+1)];
                [X,Y]=(draw(x(i),y(i),x(i+1),y(i+1)));
                [X',Y'];
                plot(X,Y,'g*')
                hold on
                disp('');
                Check(1,2);
                %Cor(:,2)=Check(1,2)
                M=find(Y==Check(1,2));
                if Check(1,1)==X(M)
                    L=[];R=[];
                    plot(Check(1,1),Check(1,2),'b*')
                    
                else
                    
                        if ~isempty(M)

                          plot(Check(1,1),Check(1,2),'b*')
                          plot(X(M),Check(1,2),'y*')
                          
                          if X(M)>=Check(1,1)
                              [X(M) Check(1,1)];
                              L=L+flag;
                          else
                              R=R+flag;
                          end
                        end
                end
                
                if flag==1
                    flag=-1;
                else
                    flag=1;
                end
                
                  
        end
         
        
         if isempty(R) && isempty(L)
             R
             L
             disp('')
             disp('Point is on the line')
             disp('')
         elseif L~=0 && R~=0
             R
             L
             disp('')
             disp('Point is Inside')
             disp('')    
         else
             R
             L
            disp('')
            disp('Point is Outside')
            disp('')
            
        end
                L=0;
                R=0;

     end

end


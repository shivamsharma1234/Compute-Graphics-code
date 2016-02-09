function [ ] = Determine_pt_inside_outside_shivam()
%UNTITLED5 Summary of this function goes here


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
L=0;
R=0;
plot(x,y)
hold on
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
                              L=L+1;
                          else
                              R=R+1;
                          end
                        end
                end
                
                  
        end
         
        
         if isempty(R) && isempty(L)
             disp('')
             disp('Point is on the line')
             disp('')
         elseif mod(L,2)~=0 && mod(R,2)~=0
             disp('')
             disp('Point is Inside')
             disp('')    
         else
            disp('')
            disp('Point is Outside')
            disp('')
            
        end
                L=0;
                R=0;

     end

end


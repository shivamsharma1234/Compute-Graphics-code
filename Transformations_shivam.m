%Shivam Sharma
%Cluster Innovation center, university of delhi 
%2D transformation code
px = input('Enter x coordinates of points: ');
py = input('Enter y coordinates of points: ');
len = size(px);
len = len(2);

%p = input('Enter point: ');
newpoint = [0 0];
%newpointx = [];
%newpointy = [];

answer = 'y';
while answer=='y'
    
    disp('Options:')
    disp('1.Translation')
    disp('2.Rotation')
    disp('3.Scale')
    disp('4.Shear in X')
    disp('5.Shear in Y')
    disp('6.Roation about a point')
    disp('')
    op = input('Enter operation: ');
    
    
    if op==1
            tran = input('Enter translation: ');
            %subplot(121)
           
            %title('Original');
            %scatter(p(1),p(2));
            %close all;
            plot(px,py);
            hold on
            for i=1:len
                ptemp = [px(i) py(i) 1];
                newpoint = gentran(tran(1),tran(2))*ptemp';
                newpoint = newpoint';
                newpoint = newpoint(1:2);
                px(i) = newpoint(1);
                py(i) = newpoint(2);
                
            end
            %subplot(122)
            plot(px,py,'r');
            hold on
            hold off
            %axis([2*max(px) 2*max(px) 2*max(py) 2*max(py)]);
            answer = input('Do you want to perform more transformations?: ');
    elseif op==2
            rot = input('Enter rotation angle: ');
            %subplot(121)
            
            %title('Original');
            close all;
            plot(px,py);
            hold on
            for i=1:len
                ptemp = [px(i) py(i) 1];
                newpoint = genrot(rot)*ptemp';
                newpoint = newpoint';
                newpoint = newpoint(1:2);
                px(i) = newpoint(1);
                py(i) = newpoint(2);
                
            end
            %subplot(122)
            plot(px,py,'r');
            %axis([2*max(px) 2*max(px) 2*max(py) 2*max(py)]);
            answer = input('Do you want to perform more transformations?: ');
    elseif op==3
        
            scale = input('Enter scale factors: ');
            %subplot(121)
            %title('Original');
            
            plot(px,py);
            for i=1:len
                ptemp = [px(i) py(i) 1];
                newpoint = genscale(scale(1),scale(2))*ptemp';
                newpoint = newpoint';
                newpoint = newpoint(1:2);
                px(i) = newpoint(1);
                py(i) = newpoint(2);
                
            end
            %subplot(122)
            plot(px,py,'r');
            %axis([2*max(px) 2*max(px) 2*max(py) 2*max(py)]);
            answer = input('Do you want to perform more transformations?: ');
    elseif op==4
            shearx = input('Enter shear factor along x and yref: ');
            %subplot(121)
            %title('Original');
            
            plot(px,py);
            for i=1:len
                ptemp = [px(i) py(i) 1];
                newpoint = genshearx(shearx(1),shearx(2))*ptemp';
                newpoint = newpoint';
                newpoint = newpoint(1:2);
                px(i) = newpoint(1);
                py(i) = newpoint(2);
                
            end
            %subplot(122)
            plot(px,py);
            %axis([2*max(px) 2*max(px) 2*max(py) 2*max(py)]);
            answer = input('Do you want to perform more transformations?: ');
    elseif op==5
            sheary = input('Enter shear factor along y and yref: ');
            %subplot(121)
            %title('Original');
            
            plot(px,py);
            for i=1:len
                ptemp = [px(i) py(i) 1];
                newpoint = gensheary(sheary(1),sheary(2))*ptemp';
                newpoint = newpoint';
                newpoint = newpoint(1:2);
                px(i) = newpoint(1);
                py(i) = newpoint(2);
                
            end
            %subplot(122)
            plot(px,py,'r');
            %axis([2*max(px) 2*max(px) 2*max(py) 2*max(py)]);
            answer = input('Do you want to perform more transformations?: ');
    elseif op==6
            point = input('Enter point about which rotation is required: ');
            angle = input('Enter angle of rotation: ');
            %subplot(121)
            %title('Original');
            
            plot(px,py);
            for i=1:len
                ptemp = [px(i) py(i) 1];
                newpoint = gentran(point(1),point(2))*genrot(angle)*gentran(-point(1),-point(2))*ptemp';
                newpoint = newpoint';
                newpoint = newpoint(1:2);
                px(i) = newpoint(1);
                py(i) = newpoint(2);
                
            end
            %subplot(122)
            plot(px,py,'r');
            %axis([2*max(px) 2*max(px) 2*max(py) 2*max(py)]);
            answer = input('Do you want to perform more transformations?: ');
            
    
    end
    
   
        
end


       
        
        
        

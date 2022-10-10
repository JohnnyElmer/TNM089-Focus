function[FM] = SML(image)

%fm = 0;
%step = 1; %The most commonly used

%for x = i-N:i+N
   % for y=j-N:j+N
    %    fm=fm+abs(2*image(x,y)-image(x-step,y)-image(x+step,y));
    %    fm=fm+abs(2*image(x,y)-image(x,y-step)-image(x,y+step));
   % end
%end

%This is technically just ML, how do we make it SML?
M = [-1 2 -1];        
Lx = imfilter(image, M, 'replicate', 'conv');
Ly = imfilter(image, M', 'replicate', 'conv');
FM = abs(Lx) + abs(Ly);
%FM = mean2(FM);
FM = sum(FM, 'all');

end
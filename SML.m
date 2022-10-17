function[FM] = SML(image)

M = [-1 2 -1];        
Lx = imfilter(image, M, 'replicate', 'conv');
Ly = imfilter(image, M', 'replicate', 'conv');
FM = abs(Lx) + abs(Ly);
FM = sum(FM, 'all');

end

%https://se.mathworks.com/matlabcentral/fileexchange/27314-focus-measure
%CASE LAPM
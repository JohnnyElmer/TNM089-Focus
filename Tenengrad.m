function[FM] = Tenengrad(image)
    
Sx = fspecial('sobel');
Gx = imfilter(double(image), Sx, 'replicate', 'conv');
Gy = imfilter(double(image), Sx', 'replicate', 'conv');
FM = Gx.^2 + Gy.^2;
FM = mean2(FM);

end

%https://se.mathworks.com/matlabcentral/fileexchange/27314-focus-measure
%CASE TENG
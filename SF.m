function[FM] = SF(image)
    
    Ix = image;
    Iy = image;
    Ix(:,1:end-1,:) = diff(image, 1, 2);
    Iy(1:end-1,:,:) = diff(image, 1, 1);
    FM = mean2(sqrt(double(Iy.^2+Ix.^2)));

end

%https://se.mathworks.com/matlabcentral/fileexchange/27314-focus-measure
%CASE SFRQ
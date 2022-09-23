function[FM] = EOG(image)
    
    Ix = image;
    Iy = image;
    Iy(1:end-1,:,:) = diff(image, 1, 1);
    Ix(:,1:end-1,:) = diff(image, 1, 2);
    FM = Ix.^2 + Iy.^2;
    FM = mean2(FM);

end

%https://se.mathworks.com/matlabcentral/fileexchange/27314-focus-measure
%CASE GRAE
function[FM] = EOL(image)

    LAP = fspecial('laplacian');
    FM = imfilter(image, LAP, 'replicate', 'conv');
    FM = mean2(FM.^2);

end

%https://se.mathworks.com/matlabcentral/fileexchange/27314-focus-measure
%CASE LAPE
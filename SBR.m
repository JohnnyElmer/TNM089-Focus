function[FM] = SBR(image)
% Spectral Band Ratio

%Get the size of the input image
[M, N] = size(image); 
FM = image;
FM2 = image;

% Create meshgrid and define circle
[X, Y] = meshgrid(0:M-1,0:N-1);
X = X';
Y = Y';
circle = sqrt((X-M/2).^2 + (Y-N/2).^2);

%Define radius based on image size
r = (((M + N) / 2) / 5);

%Create a mask for seperating high and low frequencies
mask = circle < r;

%Filter the image to only contain high frequencies
%High frequencies are outside the circle
FM(mask) = 0;
FM2(~mask) = 0;

%Summera alla värden och konvertera tillbaka till real värden
FM = (real(FM));
FM2 = (real(FM2));
FM = sum(FM, 'all');
FM2 = sum(FM2, 'all');
FM = FM/FM2;

end
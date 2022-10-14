function[FM] = SBR(image)
% Spectral Band Ratio
    % får in en fft2 shiftad bild returnerar fokus mått
    
    %MeshGrid
%Beräkna center punkt cX cY
%Välj radie beroende på bildstorlek (eg 1/5, 1/10)
%Cirkelns ekvation circle = sqrt((cX-X).^2 +(cY-Y).^2);
%mask=circle<r; (mask = lågpass)
%Kvoten högpass av masken
%Summera alla värden
%Samma steg för SBR och Spectrum

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
r = (((M + N) / 2) / 15);

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
%FM = ifft2(ifftshift(FM));

end
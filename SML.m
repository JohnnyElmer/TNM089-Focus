function[fm] = SML(image, i, j, N)

fm = 0;
step = 1; %The most commonly used

for x = i-N:i+N
    for y=j-N:j+N
        fm=fm+abs(2*image(x,y)-image(x-step,y)-image(x+step,y));
        fm=fm+abs(2*image(x,y)-image(x,y-step)-image(x,y+step));
    end
end

end
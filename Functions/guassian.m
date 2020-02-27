function filter = guassian(sigma)

s = 2 * ceil(3 * sigma) + 1;
filter = zeros(s,s);
x = round((s-1)/2);

for i = -x:x
    for j = -x:x
        xycomp = ((i ^ 2) + (j ^ 2)) / ( 2 * (sigma ^ 2));
        filter(i+x+1,j+x+1) = (1 / ( 2 * pi * sigma^2 ) ) * exp(- xycomp);
    end
end

end
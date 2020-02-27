function [x, y] = GetGradientDirection(theta)

switch(theta)
    case {abs(theta) <= 100, abs(theta) >= 80}
        x = [0,0];
        y = [-1,1];
    case {abs(theta) <= 10, abs(theta) >= -10}
        x = [-1,1];
        y = [0,0];
    case {abs(theta) <= 145, abs(theta) >= 125}
        x = [-1,1];
        y = [-1,1];
    otherwise
        x = [1,-1];
        y = [-1,1];
end

end
% Written by Leyla Tülü
% 15.06.2021 10:37:58

function [newDH] = DH(a, alpha, d, theta)

% Convert degree to radian 
alpha = (pi/180) * alpha;  
theta = (pi/180) * theta;    

ct = cos(theta);
st = sin(theta);
ca = cos(alpha);
sa = sin(alpha);

% Defined DH MAtrix 
newDH = [    ct   -st   0     a; 
          st*ca ct*ca -sa -sa*d;
          st*sa ct*sa  ca  ca*d;
              0    0   0     1];
end

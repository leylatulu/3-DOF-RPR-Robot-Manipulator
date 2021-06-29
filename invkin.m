% Written by Leyla Tülü
% 15.06.2021 10:54:32

function [t1,d2,t3] = invkin(x, y, z, l1, l2, l3)

d2 = l1;
% Calculate the theta1 
k = (x^2) + (y^2) + (l2)^2 - (l3)^2;
theta1 = atan2(y,x) + atan2(sqrt(4*(l2^2)*(x^2 + y^2) - (k^2)),k);  
% Calculate the d2 
d2 = z;
% Calculate the theta3
ct1 = cos(theta1);
st1 = sin(theta1);
st3 = (x*ct1 + y*st1 - l2)/l3;
ct3 = (x*st1 - y*ct1)/l3;
theta3 = atan2(st3,ct3);

% Convert radian to degree
t1 = (theta1) * (180/pi);
t3 = (theta3) * (180/pi);
end



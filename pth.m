% Written by Leyla Tülü
% 15.06.2021 11:25:03

function [Pos,Vel,Acc] = pth(ts, tf, dts, dtf, time)

s0 = ts;
s1 = dts;
s2 = (3/time^2)*(tf - ts) - (2/time)*dts - (1/time)*dtf;
s3 = (-2/time^3)*(tf - ts) + (1/time^2)*(dts + dtf);

Pos = []; 
Vel = []; 
Acc = [];

for t = 0:0.05:time
    % Cubic Polynomial Orbit: s0 + (s1 * t) + (s2 * t.^2) + (s3 * t.^3)
    Pos = [Pos,(s0) + (s1 * t) + (s2 * t.^2) + (s3 * t.^3)];  % Pos: position polinoms
    Vel = [Vel,(s1) + (2 * s2 * t) + (3 * s3 * t.^2)];        % Vel: velocity polinoms
    Acc = [Acc,(2 * s2) + (6 * s3 * t)];                      % Acc: acceleration polinoms
end
end


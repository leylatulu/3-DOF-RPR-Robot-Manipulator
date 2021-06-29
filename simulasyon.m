% Written by Leyla Tülü
% 17.06.2021 14:26:08

clc; clear all; close all;

figure
set(gcf,'Position',[100 100 1600 800])

% Defined link lenghts 
l1 = 600;
l2 = 400; 
l3 = 300;

% Starting position qs
% Target location for end effector 
% qs -> q1 -> q2 -> q3 -> q4 -> q5 -> q1
x = [0, -300, -100, -300, 200, 200, -300];
y = [600, 500, 500, 500, 500, 500, 500];
z = [0, 200, 400, 500, 500, 200, 200];

t1 = [];
t2 = [];
t3 = [];

for i = 1:length(x)
    clf
    
    [t1(i), t2(i), t3(i)] = invkin(x(i), y(i), z(i), l1, l2, l3);
    d2 = z(i);
    
    % DH matrix parameters
    a     = [0, 0, l2, l3];
    alpha = [0, 0, 0, 0];
    d     = [0, d2, 0, 0];
    theta = [t1(i), 0, t3(i)-90, 0];
    
    % T : Transformation Matrix 
    % Calculate the Transformation Matrix 
    for i = 1:length(theta)
        T(:, :, i) = DH(a(i), alpha(i), d(i), theta(i));
    end
    
    % Calculate the forward kinematics 
    EndT = eye(4,4);
    for k = 1:length(theta)
        mat = EndT;
        EndT = EndT * T(:,:,k);   
        
        plot3([mat(1,4) EndT(1,4)], [mat(2,4) EndT(2,4)], [mat(3,4) EndT(3,4)], 'k', 'LineWidth', 3);
        hold on, grid on
        axis([-550 550 -300 800 -100 800]);
        scatter3(EndT(1,4), EndT(2,4), EndT(3,4), 'MarkerFaceColor', [0 1 0]);
        scatter3(0, 0, 0, 'MarkerFaceColor', [0 1 0]);
        title('3 DOF RPR MANIPULATOR SIMULATION')
        xlabel('X-axis')
        ylabel('Y-axis')
        zlabel('Z-axis')
    end
    % Plotting orbital points 
    for k = 1:length(x)-1
        plot3([x(k) x(k+1)], [y(k) y(k+1)], [z(k) z(k+1)],'c','LineWidth', 3), hold on
    end
    h = [-30 20 10];
    view(h)
    str1 = {['X : ', num2str(EndT(1,4)), ' Y : ', num2str(EndT(2,4)), ' Z : ', num2str(EndT(3,4))]};
    str2 = {['X : ', num2str(0), ' Y : ', num2str(0), ' Z : ', num2str(0)]};
    text(EndT(1,4)+10, EndT(2,4), EndT(3,4), str1, 'Color', 'b', 'FontSize', 12)
    text(0, 0, -10, str2, 'Color', 'k', 'FontSize', 12)
    pause(0.4)
end









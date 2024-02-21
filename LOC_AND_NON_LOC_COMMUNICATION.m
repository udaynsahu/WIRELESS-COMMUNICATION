%%        Institute: Indian Institute of Information Technology Nagpur
%%              Lab: Wireless Communication
%%          Student: Uday Narayan Sahu 
%%             Date: 15/02/2024
%%  Assignment Name: LOC AND NON-LOC COMMUNICATION
%%             Tool: Matlab software
%%   
clc;
clear all;
close all;
fieldSize = 100;
innerRadius = 10;
outerRadius = 35;
centerX = 50;
centerY = 50;

[X, Y] = meshgrid(1:fieldSize, 1:fieldSize);

figure;
plot(X, Y, 'w.');
hold on;
scatter(50, 50, 'ro', 'filled'); 
hold on;
scatter(42,50, 'bo', 'filled');
hold on;
scatter(70,25, 'go', 'filled');
hold on;
scatter(90, 40, 'co', 'filled');
hold on;
distanceFromCenter = sqrt((X - centerX).^2 + (Y - centerY).^2);
theta = linspace(0, 2*pi, 100);
innerCircleX = centerX + innerRadius * cos(theta);
innerCircleY = centerY + innerRadius * sin(theta);
plot(innerCircleX, innerCircleY, 'b-');

outerCircleX = centerX + outerRadius * cos(theta);
outerCircleY = centerY + outerRadius * sin(theta);
plot(outerCircleX, outerCircleY, 'r-');

% Generate random points inside and outside the circles
numPoints = 2;
innerPointsX = [];
innerPointsY = [];
outerPointsX = [];
outerPointsY = [];

while numel(innerPointsX) < numPoints
    randomX = randi([centerX - innerRadius, centerX + innerRadius]);
    randomY = randi([centerY - innerRadius, centerY + innerRadius]);
    if (sqrt((randomX - centerX)^2 + (randomY - centerY)^2) > innerRadius+3) &&...
            (sqrt((randomX - centerX)^2 + (randomY - centerY)^2) < outerRadius-3)
        innerPointsX = [innerPointsX, randomX];
        innerPointsY = [innerPointsY, randomY];
    end
end
scatter(innerPointsX, innerPointsY, 'go', 'filled');
scatter(outerPointsX, outerPointsY, 'go', 'filled');
xlabel('X');
ylabel('Y');
title('100x100 Field');
axis equal;  
grid on;





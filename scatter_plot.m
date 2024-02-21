clc;
clear all; 
close all;
fieldSize = 100;
innerRadius = 5;
outerRadius = 30;
centerX = 50;
centerY = 50;

[X, Y] = meshgrid(1:fieldSize, 1:fieldSize);
numPoints = 10;
innerPointsX = [];
innerPointsY = [];
outerPointsX = [];
outerPointsY = [];

while numel(innerPointsX) < numPoints
    randomX = randi([centerX - innerRadius, centerX + innerRadius]);
    randomY = randi([centerY - innerRadius, centerY + innerRadius]);
        innerPointsX = [innerPointsX, randomX];
        innerPointsY = [innerPointsY, randomY];
end
plot(X, Y, 'w.');
hold on;
scatter(innerPointsX, innerPointsY, 'go', 'filled');
scatter(outerPointsX, outerPointsY, 'go', 'filled');
xlabel('X');
ylabel('Y');
title('100x100 Field');
axis equal;  
grid on;
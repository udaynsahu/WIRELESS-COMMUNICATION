%%        Institute: Indian Institute of Information Technology Nagpur
%%              Lab: Wireless Communication
%%          Student: Uday Narayan Sahu 
%%             Date: 01/02/2024
%%  Assignment Name: Gaussian Curve And Its PDF ,CDF
%%             Tool: Matlab software
%%   
clc;
clear all;
close all;
% Parameters
mu = 0; % mean
sigma = 1; % standard deviation
sigma1 = 5;% standard deviation
sigma2 = 10;% standard deviation
% Generate data points for Gaussian curve
x = linspace(mu - 3*sigma2, mu + 3*sigma2, 100);
y_gaussian = (1/(sigma * sqrt(2*pi))) * exp(-(x - mu).^2 / (2 * sigma^2));

% Calculate PDF (Probability Density Function)
pdf = zeros(size(x));
for i = 1:1:length(x)
    pdf(i) = (1/(sigma * sqrt(2*pi))) * exp(-(x(i) - mu).^2 / (2 * sigma^2));
end

% Calculate CDF (Cumulative Distribution Function)
cdf = zeros(size(x));
for i = 1:1:length(x)
    cdf(i) = 0.5 * (1 + erf((x(i) - mu) / (sigma * sqrt(2))));
end

% Plot Gaussian curve
figure;
subplot(3, 3, 1);
plot(x, y_gaussian, 'LineWidth', 2);
title('Gaussian Curve');
xlabel('x');
ylabel('Probability');

% Plot PDF
subplot(3, 3, 2);
plot(x, pdf, 'LineWidth', 2);
title('Probability Density Function (PDF)');
xlabel('x');
ylabel('Probability Density');

% Plot CDF
subplot(3,3,3);
plot(x, cdf, 'LineWidth', 2);
title('Cumulative Distribution Function (CDF)');
xlabel('x');
ylabel('Cumulative Probability');

x1 = linspace(mu - 3*sigma2, mu + 3*sigma2, 100);
y_gaussian1 = (1/(sigma1 * sqrt(2*pi))) * exp(-(x1 - mu).^2 / (2 * sigma1^2));

% Calculate PDF (Probability Density Function)
pdf1 = zeros(size(x1));
for i = 1:1:length(x1)
    pdf1(i) = (1/(sigma1 * sqrt(2*pi))) * exp(-(x1(i) - mu).^2 / (2 * sigma1^2));
end

% Calculate CDF (Cumulative Distribution Function)
cdf1 = zeros(size(x1));
for i = 1:1:length(x1)
    cdf1(i) = 0.5 * (1 + erf((x1(i) - mu) / (sigma1 * sqrt(2))));
end

% Plot Gaussian curve
subplot(3, 3, 4);
plot(x1, y_gaussian1, 'LineWidth', 2);
title('Gaussian Curve');
xlabel('x');
ylabel('Probability');

% Plot PDF
subplot(3, 3, 5);
plot(x1, pdf1, 'LineWidth', 2);
title('Probability Density Function (PDF)');
xlabel('x');
ylabel('Probability Density');

% Plot CDF
subplot(3,3,6);
plot(x1, cdf1, 'LineWidth', 2);
title('Cumulative Distribution Function (CDF)');
xlabel('x');
ylabel('Cumulative Probability');


x2 = linspace(mu - 3*sigma2, mu + 3*sigma2, 100);
y_gaussian2 = (1/(sigma2 * sqrt(2*pi))) * exp(-(x2 - mu).^2 / (2 * sigma2^2));

% Calculate PDF (Probability Density Function)
pdf2 = zeros(size(x2));
for i = 1:1:length(x2)
    pdf2(i) = (1/(sigma2 * sqrt(2*pi))) * exp(-(x2(i) - mu).^2 / (2 * sigma2^2));
end

% Calculate CDF (Cumulative Distribution Function)
cdf2 = zeros(size(x2));
for i = 1:1:length(x2)
    cdf2(i) = 0.5 * (1 + erf((x2(i) - mu) / (sigma2 * sqrt(2))));
end

subplot(3, 3, 7);
plot(x2, y_gaussian2, 'LineWidth', 2);
title('Gaussian Curve');
xlabel('x');
ylabel('Probability');

% Plot PDF
subplot(3, 3, 8);
plot(x2, pdf2, 'LineWidth', 2);
title('Probability Density Function (PDF)');
xlabel('x');
ylabel('Probability Density');

% Plot CDF
subplot(3,3,9);
plot(x2, cdf2, 'LineWidth', 2);
title('Cumulative Distribution Function (CDF)');
xlabel('x');
ylabel('Cumulative Probability');


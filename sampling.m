%%        Institute: Indian Institute of Information Technology Nagpur
%%              Lab: Wireless Communication
%%          Student: Uday Narayan Sahu 
%%             Date: 24/01/2024
%%  Assignment Name: Sampling and Quantization of a given signal 
%%             Tool: Matlab software
%%   
clc
clear all
close all
%taking input of sampling frquancy
fs = input('enter sampling frequancy-');
%taking input of signal frequancy
f1 = input('enter signal frequancy-');
% time
t = 0:1/fs:1;
% signal
x = 2*sin(2*pi*f1*t)+5*cos(2*pi*f1*t);
%plot of original signal
subplot(2,2,1)
plot(t,x)
xlabel('\bf time');
ylabel('\bf Amlitude');
title('continuous original signal');
%plot of discrete version of original signal
subplot(2,2,2)
stem(t,x)
xlabel('\bf time');
ylabel('\bf Amlitude');
title('discrete original signal');
% extracting time for sampling
t1 = t(1:2:end);
% signal for sampling
x1 = 2*sin(2*pi*f1*t1)+5*cos(2*pi*f1*t1);
% plot of sample signal with less number of samples
subplot(2,2,3)
plot(t1,x1)
xlabel('\bf time');
ylabel('\bf Amlitude');
title('continuous sampled signal');
%ploting discrete version of sampled signal
subplot(2,2,4)
stem(t1, x1)
xlabel('\bf time');
ylabel('\bf Amlitude');
title('discrete sampled signal');
%extreme values of signal
x_max = max(x1);
x_min = min(x1);
xquan=x1/x_max;
%number of quantization levels
n=16;

%step size for accomdate n quantization level
d = (x_max-x_min)/n;

%store value of level for quantization purpose
 q = (x_min:d:x_max);
 for ii=1:n
    q1(ii)=(q(ii)+q(ii+1))/2;
 end

for jj=1:n
    xquan(find((q1(jj)-d/2<=x)&(x<=q1(jj)+d/2))) = q1(jj).*ones(1,length(find((q1(jj)-d/2<=x)&(x<=q1(jj)+d/2))));
    deci(find(xquan==q1(jj)))=(jj-1).*ones(1,length(find(xquan==q1(jj))));
end


%ploting quantised signal 
figure(2);
plot(t,xquan);
xlabel('Time');
ylabel('Amplitude');
title('Quantised Signal');

%change decimal value of level into binary numbers 
%or encoded string
bina = cell(size(deci));
for kk=1:length(deci)
    bina{kk}=flip(de2bi(deci(kk),4));
end
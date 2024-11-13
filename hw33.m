clearvars; close all; clc;

x = readmatrix("HW03_Data.csv");

y = x(:, 2);
t = x(:,1);

L = discretize(y,20);
L1 = L(1:end-1);
L2 = L(2:end); 

Ln = [L1,L2];

T = accumarray(Ln,1);

spy(T)

title("Transition Matrix from Discretized HW03 Data")
xlabel("Population Ratio on a Given Day")
ylabel("Population Ratio on the Following Day")
fontsize(18,"points")
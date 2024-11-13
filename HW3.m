clearvars; close all; clc;

x = readmatrix("HW03_Data.csv");

y = x(:, 2);
t = x(:,1);

plot(t,y)
title("Population Ratio to the Maximum Environment Capacity of Each Day")
xlabel("Day Index of Observation (Time)")
ylabel("Population Ratio to the Maximum Environment Capacity")
fontsize(18,"points")
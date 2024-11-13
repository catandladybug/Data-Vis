clearvars; close all; clc;

x = rand;
for i = 1:100000
    x = [x; 4*x(end)*(1-x(end))]; %Xnh(?) = 4Xn(1-Xn)
end

%x = rand(size(x));

%plot(x)

L = discretize(x,1000);
%simplifies real numbers (descrete data)

L1 = L(1:end-1); %current state
L2 = L(2:end); %future state
%2 dimentional histogram

Ln = [L1,L2];

T = accumarray(Ln,1);
% imagesc(T)
% colorbar
%probability of transitions

spy(T)
%sparce matrix visualization
%sparce matrix: most of the entries are 0

% v1 = x(1:end-2);
% v2 = x(2:end-1);
% v3 = x(3:end);
% 
% plot3(v1,v2,v3,'.b') %dot snot(?) line
% grid on

%time series
%any system that the future value of the system depends on the current
%value
%x is current valuse of x
%y is next/future value or x
%face protrait doesn't care about time
% shows how they evolve based on each other

%when plotting time series, each point represents the transition between
%two points. the start point is x the finish point is y
%points can stack
%visualize transitions as matrix instead of x y graph
%weighted ajecncy/transition matrix

%ajacentcy matrix just tells you if theres a link
%makes undirected graph

%other matrix gives a weight/strengths to a matrix
%makes directed graph


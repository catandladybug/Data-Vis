clearvars; close all; clc;

x = rand;
for i = 1:100000
    x = [x; 4*x(end)*(1-x(end))]; %Xnh(?) = 4Xn(1-Xn)
end

L = discretize(x,20);

L1 = L(1:end-1); %current state
L2 = L(2:end); %future state


Ln = [L1,L2];

T = accumarray(Ln,1);

G = digraph(T);

p = plot(G)

layout(p,"circle")
p.NodeCData = randi([1 10],20,1);
%p.EdgeCData = randi([1 10],sum(~~T(:)),1); %sum(~~T(:)) finds the number of edges
% ~~ tells number of non zero elements in matrix
p.EdgeCData = T(~~T(:));
colorbar

p.EdgeCData = rescale(T(~~(T)),1,5)

%rescale(T(~~(T)),1,5)

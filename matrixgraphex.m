clearvars; close; clc;

A = [0 1 1;
     1 0 1;
     1 1 0];

G = graph(A);
%digraph for directed graphs

p = plot(G)
%p makes it so you can make changes to the graph manually
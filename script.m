clearvars; close all; clc;

I = dir("Handwritten\");

X = [];

for i = 1:length(I)
    if ~I(i).isdir
        A = imread(['Handwritten\' I(i).name]);

        X = [X, A(:)];
    end
end

X = double(X);

[u,s,v] = svd(X);

PC = X*v; %principle component

for i = 1:4
    subplot(1,4,i)
    imagesc(reshape(PC(:,i), [28 28]))
end
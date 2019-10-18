function [ bw ] = graytobw( G, threshold )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

bw = G > threshold;
figure, imshow(bw);
end


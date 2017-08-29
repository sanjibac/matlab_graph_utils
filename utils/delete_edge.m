function [ G ] = delete_edge( edge, G )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

[p, c] = ind2sub(size(G), edge);
G(p,c) = 0;
G(c,p) = 0;
end


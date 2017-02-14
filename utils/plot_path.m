function plot_path( path, coord_set, col )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

if(nargin <= 2)
    col = 'b';
end
hold on;
plot(coord_set(path, 1), coord_set(path, 2), col, 'LineWidth', 2);
end


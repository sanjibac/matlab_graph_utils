function plot_path( path, coord_set )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

hold on;
plot(coord_set(path, 1), coord_set(path, 2), 'b', 'LineWidth', 2);
end


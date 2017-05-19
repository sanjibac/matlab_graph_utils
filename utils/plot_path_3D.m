function plot_path_3D( path, coord_set, col, lw )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

if(nargin <= 2)
    col = 'b';
end
if(nargin <= 3)
    lw = 2;
end
hold on;
plot3(coord_set(path, 1), coord_set(path, 2), coord_set(path, 3), 'Color', col, 'LineWidth', lw);
end

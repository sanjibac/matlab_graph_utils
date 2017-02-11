function plot_edgeid( edge_id, status, G, coord_set )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

hold on;
[ ~, p, c ] = get_edge_from_edgeid( edge_id, G );
if (status==1)
    col = 'g';
else
    col = 'r';
end
plot(coord_set([p c], 1), coord_set([p c], 2), col, 'LineWidth', 2);
end



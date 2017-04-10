function plot_edge_likelihood( edge_likelihood, graph, coord_set )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

% plot stuff
candidate_tests = find(edge_likelihood > 1e-3);
 cmap = flipud(cool);
% cmap = cmap(0.5*size(cmap,1):end, :);
%cmap = spring;
if (~isempty(candidate_tests))
    candidate_gain = edge_likelihood;    
    for t = candidate_tests
        v = candidate_gain(t);
        plot_edgeid( t, graph, coord_set, get_color_interp(cmap, v), 4*v );
    end
end

end


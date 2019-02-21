%%
% Copyright (c) 2017 Carnegie Mellon University, Sanjiban Choudhury <sanjibac@andrew.cmu.edu>
%
% For License information please see the LICENSE file in the root directory.
%

function view_start_goal( coord_set, start_idx, goal_idx)
%VIEW_GRAPH Summary of this function goes here
%   Detailed explanation goes here

scatter(coord_set(start_idx,1), coord_set(start_idx,2),60,[0.5961    0.3059    0.6392], 'filled');
scatter(coord_set(goal_idx,1), coord_set(goal_idx,2),60,[ 1.0000    0.4980         0], 'filled');

end

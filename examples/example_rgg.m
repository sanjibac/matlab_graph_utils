%% Example RGG
clc;
clear;
close all;

%% Create graph
rng(1);
bbox = [0 1 0 1];
N = 100;

[ G, coord_set ] = rgg( bbox, N);
figure;
axis(bbox);
view_graph( G, coord_set );

%% Start and goal
[~, start_idx] = min(pdist2([0 0], coord_set), [], 2);
[~, goal_idx] = min(pdist2([1 1], coord_set), [], 2);


%% Path
[~, path] = graphshortestpath(G, start_idx, goal_idx);
plot_path( path, coord_set );

%% K-Shortest paths
% [~, path_set] = graphkshortestpaths(G, start_idx, goal_idx, 10);
% plot_path_set( path_set, coord_set );

%% Save graph
save_graph( '../resources/test.txt', G );
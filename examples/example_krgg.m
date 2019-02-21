%% 
% Copyright (c) 2017 Carnegie Mellon University, Sanjiban Choudhury <sanjibac@andrew.cmu.edu>
%
% For License information please see the LICENSE file in the root directory.
%

%% Example RGG
clc;
clear;
close all;

%% Create graph
rng(1);
bbox = [0 1 0 1];
N = 300;

[ G, coord_set ] = krgg( bbox, N, 4);
G = tril(G);
figure;
axis(bbox);
view_graph( G, coord_set );


%% 
% Copyright (c) 2017 Carnegie Mellon University, Sanjiban Choudhury <sanjibac@andrew.cmu.edu>
%
% For License information please see the LICENSE file in the root directory.
%

function [ G, coord_set ] = krgg( bbox, N, k )
%RGG A 2D RGG graph
%   G: is the (sparse) graph (NxN)
%   state_set: is (Nx2) set of 2d coord
%   bbox: [xmin xmax ymin ymax]
%   N: number of vertices

if (nargin <=2 )
    k = 1;
end

k = 1 + k;

coord_set = repmat([bbox(1) bbox(3)], [N, 1]) + rand(N,2).*repmat([bbox(2)-bbox(1) bbox(4)-bbox(3)],[N,1]);
G = squareform(pdist(coord_set));
[~,I] = maxk(G', size(G,1) - k);
b = reshape(I, [], 1);
a = reshape(repmat(1:size(G,1), size(G,1) - k, 1), [], 1);
idx = sub2ind(size(G), a, b);
G(idx) = 0;
G = max(G,G');
G = sparse(G);
end

function status = collision_check_2d_graph( G, coord_set, line_coll_check_fn, pt_coll_check_fn )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

status = sparse(G);
[p, c] = ind2sub(size(G), find(G));
for i = 1:nnz(G)
    p_coord = coord_set(p(i),:);
    c_coord = coord_set(c(i),:);
    if (~pt_coll_check_fn(p_coord))
        status(p(i), c(i)) = 0;
    elseif (~pt_coll_check_fn(c_coord))
        status(p(i), c(i)) = 0;
    elseif (~line_coll_check_fn(p_coord, c_coord))
        status(p(i), c(i)) = 0;
    else
        status(p(i), c(i)) = 1;
    end
end

end


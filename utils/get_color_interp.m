function col = get_color_interp( cmap, val )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

hsv=rgb2hsv(cmap);
cm_data=interp1(linspace(0,1,size(cmap,1)),hsv,val);
col=hsv2rgb(cm_data);

end


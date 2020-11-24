function []=Figure_Open()
[f_figure p_figure]=uigetfile({'*.jpg';'*.bmp';'*.png'},'打开文件');
img = imread( [p_figure, f_figure] );
imshow(img);
end
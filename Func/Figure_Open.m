function []=Figure_Open()
[f_figure p_figure]=uigetfile({'*.jpg';'*.bmp';'*.png'},'���ļ�');
img = imread( [p_figure, f_figure] );
imshow(img);
end
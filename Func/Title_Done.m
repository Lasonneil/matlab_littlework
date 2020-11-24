function []=Title_Done(handles)
axes(handles.Paint_Axes);
Title_Temp=get(handles.Title_edit,'String');
title(Title_Temp);
end
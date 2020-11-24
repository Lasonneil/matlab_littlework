function []=Legend_Done_Func(handles)
 Legend_Temp=get(handles.Legend_edit,'string');
 axes(handles.Paint_Axes);
 legend( Legend_Temp);
set(handles.Line_Choose_PopMenu,'string',Legend_Temp);
 
 
end
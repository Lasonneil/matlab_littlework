function[]=Line_Choose_Func(handles)
global Paint_Times;
global h_Choose;
global h;


Line_Choose_Text_Index=get(handles.Line_Choose_PopMenu,'Value');
Line_Choose_Text_Cell=get(handles.Line_Choose_PopMenu,'String');
Line_Choose_Text=Line_Choose_Text_Cell{Line_Choose_Text_Index};

for i=1:Paint_Times-1
    Line_Names=string(get(h(i),'DisplayName'));
    if (Line_Choose_Text== Line_Names)
        h_Choose=h(i);
        set(h_Choose,'Selected','on');
    else
        %just for fun
    end
    
end
end
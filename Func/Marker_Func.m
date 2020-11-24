function []=Marker_Func(handles,h_Now)

DotType_Value_Index=get(handles.DotType_PopMenu,'Value');
DotType_Value_Cell=get(handles.DotType_PopMenu,'String');
DotType_Value=DotType_Value_Cell{DotType_Value_Index};
switch DotType_Value
    case '默认'
        ;%do nothing
    case '实点标记'
        set(h_Now,'Marker','.','MarkerSize',25);
    case '圆圈标记'
        set(h_Now,'Marker','o','MarkerSize',15);
    case '叉号形×'
        set(h_Now,'Marker','x','MarkerSize',15);
    case '十字形＋'
        set(h_Now,'Marker','+','MarkerSize',15);
    case '星号标记*'
        set(h_Now,'Marker','*','MarkerSize',15);
    case '方形标记□'
        set(h_Now,'Marker','s','MarkerSize',15);
    case '钻石形标记◇'
        set(h_Now,'Marker','d','MarkerSize',15);
    case '五角星标记☆'
        set(h_Now,'Marker','p','MarkerSize',15);
    
end


end
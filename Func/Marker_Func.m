function []=Marker_Func(handles,h_Now)

DotType_Value_Index=get(handles.DotType_PopMenu,'Value');
DotType_Value_Cell=get(handles.DotType_PopMenu,'String');
DotType_Value=DotType_Value_Cell{DotType_Value_Index};
switch DotType_Value
    case 'Ĭ��'
        ;%do nothing
    case 'ʵ����'
        set(h_Now,'Marker','.','MarkerSize',25);
    case 'ԲȦ���'
        set(h_Now,'Marker','o','MarkerSize',15);
    case '����Ρ�'
        set(h_Now,'Marker','x','MarkerSize',15);
    case 'ʮ���Σ�'
        set(h_Now,'Marker','+','MarkerSize',15);
    case '�Ǻű��*'
        set(h_Now,'Marker','*','MarkerSize',15);
    case '���α�ǡ�'
        set(h_Now,'Marker','s','MarkerSize',15);
    case '��ʯ�α�ǡ�'
        set(h_Now,'Marker','d','MarkerSize',15);
    case '����Ǳ�ǡ�'
        set(h_Now,'Marker','p','MarkerSize',15);
    
end


end
function []=LineType_Func(handles,h_Now)

%��ȡѡ�е�����
LineType_Value_Index=get(handles.Line_Type_PopMenu,'Value');
LineType_Value_Cell=get(handles.Line_Type_PopMenu,'String');
LineType_Value=LineType_Value_Cell{LineType_Value_Index};


switch LineType_Value
    case 'Ĭ��'
        ;%do nothing
    case 'ʵ��'
        set(h_Now,'LineStyle','-');
    case '����'
        set(h_Now,'LineStyle',':');
    case '�㻭��'
        set(h_Now,'LineStyle','-.');
    case '����'
        set(h_Now,'LineStyle','--');
    
end

end
function []=LineColor_Func(handles,h_Now)

%��ȡѡ�е���ɫֵ
LineColor_Value_Index=get(handles.Line_Color_PopMenu,'Value');
LineColor_Value_Cell=get(handles.Line_Color_PopMenu,'String');
LineColor_Value=LineColor_Value_Cell{LineColor_Value_Index};


switch LineColor_Value
    case 'Ĭ��'
        ;%do nothing
    case '��ɫ'
        set(h_Now,'Color','k');
    case '��ɫ'
        set(h_Now,'Color','w');
    case '��ɫ'
        set(h_Now,'Color','r');
    case '��ɫ'
        set(h_Now,'Color','c');
    case '��ɫ'
        set(h_Now,'Color','g');
    case '��ɫ'
        set(h_Now,'Color','b');
    case '��ɫ'
        set(h_Now,'Color','y');
    case '�Ϻ�ɫ'
        set(h_Now,'Color','m');
        
    
end


end
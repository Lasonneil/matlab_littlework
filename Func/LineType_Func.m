function []=LineType_Func(handles,h_Now)

%获取选中的线型
LineType_Value_Index=get(handles.Line_Type_PopMenu,'Value');
LineType_Value_Cell=get(handles.Line_Type_PopMenu,'String');
LineType_Value=LineType_Value_Cell{LineType_Value_Index};


switch LineType_Value
    case '默认'
        ;%do nothing
    case '实线'
        set(h_Now,'LineStyle','-');
    case '点线'
        set(h_Now,'LineStyle',':');
    case '点画线'
        set(h_Now,'LineStyle','-.');
    case '虚线'
        set(h_Now,'LineStyle','--');
    
end

end
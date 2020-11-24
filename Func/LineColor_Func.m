function []=LineColor_Func(handles,h_Now)

%获取选中的颜色值
LineColor_Value_Index=get(handles.Line_Color_PopMenu,'Value');
LineColor_Value_Cell=get(handles.Line_Color_PopMenu,'String');
LineColor_Value=LineColor_Value_Cell{LineColor_Value_Index};


switch LineColor_Value
    case '默认'
        ;%do nothing
    case '黑色'
        set(h_Now,'Color','k');
    case '白色'
        set(h_Now,'Color','w');
    case '红色'
        set(h_Now,'Color','r');
    case '青色'
        set(h_Now,'Color','c');
    case '绿色'
        set(h_Now,'Color','g');
    case '蓝色'
        set(h_Now,'Color','b');
    case '黄色'
        set(h_Now,'Color','y');
    case '紫红色'
        set(h_Now,'Color','m');
        
    
end


end
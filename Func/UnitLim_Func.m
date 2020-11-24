function[]=UnitLim_Func(handles,Axes_Chance)

%从输入框获取最大和最小值
UnitLim_Min=str2num(get(handles.Unit_Min_edit,'string'));
UnitLim_Max=str2num(get(handles.Unit_Max_edit,'string'));

if (UnitLim_Min>=UnitLim_Max)
    message='坐标轴最小值必须小于最大值！';
    icon='error';
    msgbox(message,'错误',icon);
end
%改变坐标轴显示范围
switch Axes_Chance
    case 'x轴'
        set(handles.Paint_Axes,'XLim',[UnitLim_Min UnitLim_Max]);
    case 'y轴'
        set(handles.Paint_Axes,'YLim',[UnitLim_Min UnitLim_Max]);
    case 'z轴'
        set(handles.Paint_Axes,'ZLim',[UnitLim_Min UnitLim_Max]);
    otherwise
        message='坐标轴错误！';
        icon='error'
        msgbox(message,'错误',icon);      
end

end
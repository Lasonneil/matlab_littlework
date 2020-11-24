function[]=UnitLim_Func(handles,Axes_Chance)

%��������ȡ������Сֵ
UnitLim_Min=str2num(get(handles.Unit_Min_edit,'string'));
UnitLim_Max=str2num(get(handles.Unit_Max_edit,'string'));

if (UnitLim_Min>=UnitLim_Max)
    message='��������Сֵ����С�����ֵ��';
    icon='error';
    msgbox(message,'����',icon);
end
%�ı���������ʾ��Χ
switch Axes_Chance
    case 'x��'
        set(handles.Paint_Axes,'XLim',[UnitLim_Min UnitLim_Max]);
    case 'y��'
        set(handles.Paint_Axes,'YLim',[UnitLim_Min UnitLim_Max]);
    case 'z��'
        set(handles.Paint_Axes,'ZLim',[UnitLim_Min UnitLim_Max]);
    otherwise
        message='���������';
        icon='error'
        msgbox(message,'����',icon);      
end

end
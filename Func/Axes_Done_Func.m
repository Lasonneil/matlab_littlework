function []=Axes_Done_Func(handles)

axes(handles.Paint_Axes);

%�ж�ѡ������һ��������Ϊ����
Axes_Change_PopMenu_Idex = get(handles.Axes_Change_PopMenu,'Value');
Axes_Change_PopMenu_Cell=get(handles.Axes_Change_PopMenu,'String');
Axes_Chance=Axes_Change_PopMenu_Cell{Axes_Change_PopMenu_Idex};
%�жϵڶ��������������̶�
Axes_Unit_Change_Idex=get(handles.Axes_Unit_Change,'Value');
Axes_Unit_Change_Cell=get(handles.Axes_Unit_Change,'string');
Unit_Chance=Axes_Unit_Change_Cell{Axes_Unit_Change_Idex};

%���ú�����������̶��Ƿ�Ϊlog��ѡ��

islog=isUnit_Change_Func(Unit_Chance);

%�ı�������̶ȵ�λ
Unit_Change_Func(Axes_Chance,islog);

%�ı���������ʾ��Χ
UnitLim_Func(handles,Axes_Chance);

end
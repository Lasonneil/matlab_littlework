function []=Axes_Done_Func(handles)

axes(handles.Paint_Axes);

%判断选择了哪一个坐标轴为对象
Axes_Change_PopMenu_Idex = get(handles.Axes_Change_PopMenu,'Value');
Axes_Change_PopMenu_Cell=get(handles.Axes_Change_PopMenu,'String');
Axes_Chance=Axes_Change_PopMenu_Cell{Axes_Change_PopMenu_Idex};
%判断第二个输入框坐标轴刻度
Axes_Unit_Change_Idex=get(handles.Axes_Unit_Change,'Value');
Axes_Unit_Change_Cell=get(handles.Axes_Unit_Change,'string');
Unit_Chance=Axes_Unit_Change_Cell{Axes_Unit_Change_Idex};

%利用函数返回坐标刻度是否为log的选择

islog=isUnit_Change_Func(Unit_Chance);

%改变坐标轴刻度单位
Unit_Change_Func(Axes_Chance,islog);

%改变坐标轴显示范围
UnitLim_Func(handles,Axes_Chance);

end
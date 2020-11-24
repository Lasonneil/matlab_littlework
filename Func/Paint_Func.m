function []=Paint_Func(handles)
global Data_x;
global Data_y;
global Data_z;
global Table_Old;
global Paint_Times;
global h;

%先复制一份表格数据
Table_Old=get(handles.Table,'Data');  
%获取表格行列数
[r c]=size(Table_Old);

%判断数据列数，合适赋值
if c==2
    Data_x=Table_Old(:,1);
    Data_y=Table_Old(:,2);          %给数据x，y赋值
elseif c==3
    Data_x=Table_Old(:,1);
    Data_y=Table_Old(:,2);
    Data_z=Table_Old(:,3);
else
     message='数据列数错误！';
     icon='error';
     errorbox=msgbox(message,'错误',icon);
      
end

%选择绘图方法
Paint_Chance_Idex = get(handles.Paint_PopMenu_Chance,'Value');
Paint_Chance_Cell=get(handles.Paint_PopMenu_Chance,'String');
Paint_Chance=Paint_Chance_Cell{Paint_Chance_Idex};

axes(handles.Paint_Axes);

switch Paint_Chance
    case 'Plot'
        h(Paint_Times)=plot(Data_x,Data_y);
        Paint_Times=Paint_Times+1;
    case 'Plot3'
        h(Paint_Times)=plot3(Data_x,Data_y,Data_z);
        Paint_Times=Paint_Times+1;
    case 'area(2)'
        h(Paint_Times)=area(Data_x,Data_y);
        Paint_Times=Paint_Times+1;
    case 'comet(2)'
        h(Paint_Times)=comet(Data_x,Data_y);
        Paint_Times=Paint_Times+1;
    case 'bar(2)'
        h(Paint_Times)=bar(Data_x,Data_y);
        Paint_Times=Paint_Times+1;
    case 'feather(2)'
        h(Paint_Times)=feather(Data_x,Data_y);
        Paint_Times=Paint_Times+1;
    case 'polar(2)'
        h(Paint_Times)=polar(Data_x,Data_y);
        Paint_Times=Paint_Times+1;
%     case 'mesh'
%        [Data_x Data_y]=meshgrid(Data_x,Data_y);
%        
%        mesh(Data_x,Data_y,Data_z);
    %case 'surf'
        
%     case 'contour'
%     case 'mesh'
%     case 'pie'
        
    otherwise
     message='错误！';
     icon='error';
     errorbox=msgbox(message,'错误',icon);
end


%初始化视角
Initial_View_DownArray=get(handles.Paint_Axes,'View');
set(handles.El_SliderBar,'Value',Initial_View_DownArray(2));
Initial_View_UpArray=get(handles.Paint_Axes,'View');
set(handles.Az_SliderBar,'Value',Initial_View_UpArray(1));

end
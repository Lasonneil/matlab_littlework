function Table_Add=Table_Add_Func(handles)
%声明用到的全局变量
global Data_x;
global Data_y;
global Data_z;
global Table_Data_Row;
global Table_Old;

%先复制一份表格数据
Table_Old=get(handles.Table,'Data');  

%获取表格行列数
[r c]=size(Table_Old);

%判断数据列数，合适添加
if c==2
    Data_add=[Data_x Data_y];  %这是要添加的点
    Table_Old_Add = Data_add;            %把添加的点放入 表格的上半部分
elseif c==3
    Data_add=[Data_x Data_y Data_z];  %这是要添加的点
    Table_Old_Add = Data_add;            %把添加的点放入 表格的上半部分
else
       message='数据列数错误！';
        icon='error';
        errorbox=msgbox(message,'错误',icon);
end

%拼接数据并返回
Table_Add= [Table_Old;Table_Old_Add]; 

end
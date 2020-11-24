function Table_Insert=Table_Insert_Func(handles)
%声明用到的全局变量
global Data_x;
global Data_y;
global Data_z;
global Table_Data_Row;
global Table_Old;

%先复制一份表格数据
Table_Old=get(handles.Table,'Data');  

%临时保存表格数据
Table_Old_Tempu=Table_Old(1:Table_Data_Row,:); % 临时保存插入点及以上的数据，即表格的上半部分
Table_Old_Tempd=Table_Old(Table_Data_Row:end,:);  %临时保存插入点以下的数据，即表格的下半部分

%获取表格行列数
[r c]=size(Table_Old);

%判断数据列数，合适添加
if c==2
    Data_add=[Data_x Data_y];  %这是要添加的点
    Table_Old_Tempu(Table_Data_Row,:)=Data_add;            %把添加的点放入 表格的上半部分
elseif c==3
    Data_add=[Data_x Data_y Data_z];  %这是要添加的点
    Table_Old_Tempu(Table_Data_Row,:)=Data_add;            %把添加的点放入 表格的上半部分
end

 %拼接表格并返回
Table_Insert=[Table_Old_Tempu;Table_Old_Tempd];         

end
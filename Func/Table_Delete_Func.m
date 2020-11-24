function Table_Delete=Table_Delete_Func(handles)
%声明用到的全局变量
global Data_x;
global Data_y;
global Data_z;
global Table_Data_Row;
global Table_Old;

%先复制一份表格数据
Table_Old=get(handles.Table,'Data');  

%获取数据行列数
[r c]=size(Table_Old);

%判断数据列数，合适删除
if c==2
     
    Table_Old(Table_Data_Row,:)=[];            %删除
elseif c==3
    
    Table_Old(Table_Data_Row,:)=[];            %删除
end

Table_Delete=Table_Old;          %返回删除后的表格


end
function Table_Add=Table_Add_Func(handles)
%�����õ���ȫ�ֱ���
global Data_x;
global Data_y;
global Data_z;
global Table_Data_Row;
global Table_Old;

%�ȸ���һ�ݱ������
Table_Old=get(handles.Table,'Data');  

%��ȡ���������
[r c]=size(Table_Old);

%�ж������������������
if c==2
    Data_add=[Data_x Data_y];  %����Ҫ��ӵĵ�
    Table_Old_Add = Data_add;            %����ӵĵ���� �����ϰ벿��
elseif c==3
    Data_add=[Data_x Data_y Data_z];  %����Ҫ��ӵĵ�
    Table_Old_Add = Data_add;            %����ӵĵ���� �����ϰ벿��
else
       message='������������';
        icon='error';
        errorbox=msgbox(message,'����',icon);
end

%ƴ�����ݲ�����
Table_Add= [Table_Old;Table_Old_Add]; 

end
function Table_Delete=Table_Delete_Func(handles)
%�����õ���ȫ�ֱ���
global Data_x;
global Data_y;
global Data_z;
global Table_Data_Row;
global Table_Old;

%�ȸ���һ�ݱ������
Table_Old=get(handles.Table,'Data');  

%��ȡ����������
[r c]=size(Table_Old);

%�ж���������������ɾ��
if c==2
     
    Table_Old(Table_Data_Row,:)=[];            %ɾ��
elseif c==3
    
    Table_Old(Table_Data_Row,:)=[];            %ɾ��
end

Table_Delete=Table_Old;          %����ɾ����ı��


end
function Table_Insert=Table_Insert_Func(handles)
%�����õ���ȫ�ֱ���
global Data_x;
global Data_y;
global Data_z;
global Table_Data_Row;
global Table_Old;

%�ȸ���һ�ݱ������
Table_Old=get(handles.Table,'Data');  

%��ʱ����������
Table_Old_Tempu=Table_Old(1:Table_Data_Row,:); % ��ʱ�������㼰���ϵ����ݣ��������ϰ벿��
Table_Old_Tempd=Table_Old(Table_Data_Row:end,:);  %��ʱ�����������µ����ݣ��������°벿��

%��ȡ���������
[r c]=size(Table_Old);

%�ж������������������
if c==2
    Data_add=[Data_x Data_y];  %����Ҫ��ӵĵ�
    Table_Old_Tempu(Table_Data_Row,:)=Data_add;            %����ӵĵ���� �����ϰ벿��
elseif c==3
    Data_add=[Data_x Data_y Data_z];  %����Ҫ��ӵĵ�
    Table_Old_Tempu(Table_Data_Row,:)=Data_add;            %����ӵĵ���� �����ϰ벿��
end

 %ƴ�ӱ�񲢷���
Table_Insert=[Table_Old_Tempu;Table_Old_Tempd];         

end
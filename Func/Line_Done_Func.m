function[]=Line_Done_Func(handles)
global Paint_Times;
global h;
global h_count;


h_SelectedLine_Now=is_Selected(handles); % is_Selected�������ر�ѡ�ж���ľ������
%�����forѭ������ѡ�ж���
for count_number=1:h_count-1
    h_Now=h_SelectedLine_Now(count_number);  %��ǰ����ľ��������Ϊ���飬���������
    Marker_Func(handles,h_Now);%�ı���͵ĺ���
    LineColor_Func(handles,h_Now);%�ı�������ɫ�ĺ���
    LineType_Func(handles,h_Now);%�ı���������
end


set(h_Now,'Selected','off');

end
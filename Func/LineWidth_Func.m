function[]=LineWidth_Func(handles)
global Paint_Times;
global h_Choose;
global h_count;
global h;

h_SelectedLine_Array=is_Selected(handles); % is_Selected�������ر�ѡ�ж���ľ������

%�����forѭ������ѡ�ж���
for count_number=1:h_count-1
    h_Now=h_SelectedLine_Array(count_number);  %h_NowΪ��ǰ����ľ��
    LineWidth_Value=get(handles.Line_Width_SliderBar,'Value');
   set(h_Now,'LineWidth',LineWidth_Value);
end



end
function[]=LineWidth_Func(handles)
global Paint_Times;
global h_Choose;
global h_count;
global h;

h_SelectedLine_Array=is_Selected(handles); % is_Selected函数返回被选中对象的句柄数组

%下面的for循环遍历选中对象
for count_number=1:h_count-1
    h_Now=h_SelectedLine_Array(count_number);  %h_Now为当前对象的句柄
    LineWidth_Value=get(handles.Line_Width_SliderBar,'Value');
   set(h_Now,'LineWidth',LineWidth_Value);
end



end
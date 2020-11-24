function[]=Line_Done_Func(handles)
global Paint_Times;
global h;
global h_count;


h_SelectedLine_Now=is_Selected(handles); % is_Selected函数返回被选中对象的句柄数组
%下面的for循环遍历选中对象
for count_number=1:h_count-1
    h_Now=h_SelectedLine_Now(count_number);  %当前对象的句柄，可以为数组，即多个对象
    Marker_Func(handles,h_Now);%改变点型的函数
    LineColor_Func(handles,h_Now);%改变线条颜色的函数
    LineType_Func(handles,h_Now);%改变线条类型
end


set(h_Now,'Selected','off');

end
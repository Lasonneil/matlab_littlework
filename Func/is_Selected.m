function h_SelectedLine=is_Selected(handles)
global Paint_Times;
global h;
global h_count;

h_count=1;

for j=1:Paint_Times-1
    Line_Selected_State=string(get(h(j),'Selected'));
    
    if(Line_Selected_State=='on')
        h_SelectedLine(h_count)=h(j);
        h_count=h_count+1;
    else
        message='��ѡ��һ���ߣ�';
        icon='error';
        msgbox(message,'����',icon);
        
    end
    
    
end



end
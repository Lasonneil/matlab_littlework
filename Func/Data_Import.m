function []=Data_Import(handles)
global xls_Data;
global txt_Data;

[f_data p_data]=uigetfile({'*.txt';'*.xls';'*.xlsx'},'打开文件');
[filepath,name,ext] = fileparts(f_data);

switch ext
    case {'.xls','.xlsx'}
       xls_Data=xlsread([p_data,f_data]);
       set(handles.Table,'Data',xls_Data);
    case '.txt'
        txt_Data=textread([p_data,f_data]);
        set(handles.Table,'Data',txt_Data);

    otherwise
        message='格式错误！';
        icon='error';
        errorbox=msgbox(message,'错误',icon);
end


end
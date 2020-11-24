function []=Data_Open()
[f_data p_data]=uigetfile({'*.xls';'*.xlsx';'*.txt'},'打开文件');
uiopen(f_data);
end
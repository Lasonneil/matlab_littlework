function []=Data_Open()
[f_data p_data]=uigetfile({'*.xls';'*.xlsx';'*.txt'},'���ļ�');
uiopen(f_data);
end
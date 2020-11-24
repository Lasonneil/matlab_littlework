function []=Creat_Text()

global i_New_Text ;
fileID = fopen(['data' num2str(i_New_Text) '.txt'] ,'a+','n','UTF-8');
fclose(fileID);
i_New_Text = i_New_Text +1;

end
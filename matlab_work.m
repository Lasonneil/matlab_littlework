function varargout = matlab_work(varargin)
% MATLAB_WORK MATLAB code for matlab_work.fig
%      MATLAB_WORK, by itself, creates a new MATLAB_WORK or raises the existing
%      singleton*.
%
%      H = MATLAB_WORK returns the handle to a new MATLAB_WORK or the handle to
%      the existing singleton*.
%
%      MATLAB_WORK('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MATLAB_WORK.M with the given input arguments.
%
%      MATLAB_WORK('Property','Value',...) creates a new MATLAB_WORK or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before matlab_work_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to matlab_work_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help matlab_work

% Last Modified by GUIDE v2.5 15-May-2020 16:03:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @matlab_work_OpeningFcn, ...
                   'gui_OutputFcn',  @matlab_work_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT

addpath(genpath(pwd));  %添加所有子目录路径




% --- Executes just before matlab_work is made visible.
function matlab_work_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to matlab_work (see VARARGIN)

% Choose default command line output for matlab_work
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
global i_New_Table;
global i_New_Text;
global Table_Old;
global xls_Data;
global Table_Data_Row;
global Data_x;
global Data_y;
global Data_z;
global h;  %h是当前acex中线条对象的句柄数组
global h_Choose;%h_Choose为当前选中的线条对象，临时值，用于显示线条的选中状态，在Line_Choose_Func使用，应当是个局部变量貌似，反正我定义了个全局的
global h_count;%在is_Selected函数中定义，存储当前选中线条对象的数量+1
global Paint_Times;
Paint_Times=1;
i_New_Table=0;
i_New_Text=0;

% UIWAIT makes matlab_work wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = matlab_work_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_2_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_3_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_4_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_5_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_6_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)




% --------------------------------------------------------------------
function Untitled_7_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_8_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Data_Change_Callback(hObject, eventdata, handles)
% hObject    handle to Data_Change (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_15_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_16_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_12_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Save_Menu_Callback(hObject, eventdata, handles)
% hObject    handle to Save_Menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Save_Func(handles);

% --------------------------------------------------------------------
function Figure_Open_Callback(hObject, eventdata, handles)
% hObject    handle to Figure_Open (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Figure_Open();



% --------------------------------------------------------------------
function Data_Open_Callback(hObject, eventdata, handles)
% hObject    handle to Data_Open (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Data_Open();

% --------------------------------------------------------------------
function TextData_New_Callback(hObject, eventdata, handles)
% hObject    handle to TextData_New (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Creat_Text();



% --------------------------------------------------------------------
function Data_Import_Callback(hObject, eventdata, handles)
% hObject    handle to Data_Import (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global xls_Data;
global txt_Data;
Data_Import(handles);



% --------------------------------------------------------------------
function Data_Export_Callback(hObject, eventdata, handles)
% hObject    handle to Data_Export (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function ExcelData_New_Callback(hObject, eventdata, handles)
% hObject    handle to ExcelData_New (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global i_New_Table;
Creat_Table();



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edity_Callback(hObject, eventdata, handles)
% hObject    handle to edity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edity as text
%        str2double(get(hObject,'String')) returns contents of edity as a double


% --- Executes during object creation, after setting all properties.
function edity_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editz_Callback(hObject, eventdata, handles)
% hObject    handle to editz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editz as text
%        str2double(get(hObject,'String')) returns contents of editz as a double


% --- Executes during object creation, after setting all properties.
function editz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function Table_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Table (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Data = cell(3,2); %新建一个3行2列的元胞数组
% % 设定具体的内容，如：
% Data(:,1) = {'佳洁士-全优七效';
% '佳洁士-3D炫白';
% '黑人-茶倍健';}; %设置第1列为牙膏的产品名
% Data(:,2) = {15;16;13}; %设置第2列为牙膏的单价
% set(hObject, 'ColumnName', {'x','y','z'}, 'data',Data) %将数据设置到uitable控件中
global xls_Data;
global txt_Data;
set(hObject,'ColumnName',{'x','y','z'});
set(hObject,'ColumnEditable',logical(ones(1,3)));
set(hObject,'Data',zeros(30,2));


% --- Executes on button press in Delete_Button.
function Delete_Button_Callback(hObject, eventdata, handles)
% hObject    handle to Delete_Button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Table_Delete=Table_Delete_Func(handles);
set(handles.Table,'Data',Table_Delete);


function edit_x_Callback(hObject, eventdata, handles)
% hObject    handle to edit_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_x as text
%        str2double(get(hObject,'String')) returns contents of edit_x as a double
global Data_x;
Data_x=str2num(get(hObject,'string'));

% --- Executes during object creation, after setting all properties.
function edit_x_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Insert_Button.
function Insert_Button_Callback(hObject, eventdata, handles)
% hObject    handle to Insert_Button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Table_Insert=Table_Insert_Func(handles);
set(handles.Table,'Data',Table_Insert);

% --- Executes on button press in Add_Button.
function Add_Button_Callback(hObject, eventdata, handles)
% hObject    handle to Add_Button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%Table_Add_Func(handles);
Table_Add=Table_Add_Func(handles);
set(handles.Table,'Data',Table_Add);

function edit_Row_Callback(hObject, eventdata, handles)
% hObject    handle to edit_Row (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_Row as text
%        str2double(get(hObject,'String')) returns contents of edit_Row as a double
global Table_Data_Row;
edit_Row_string=get(hObject,'string');
Table_Data_Row=str2num(edit_Row_string);



% --- Executes during object creation, after setting all properties.
function edit_Row_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_Row (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function ContexMenu_Add_Callback(hObject, eventdata, handles)
% hObject    handle to ContexMenu_Add (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Table_Add=Table_Add_Func(handles);
set(handles.Table,'Data',Table_Add);

% --------------------------------------------------------------------
function ContextMenu_Delete_Callback(hObject, eventdata, handles)
% hObject    handle to ContextMenu_Delete (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Table_Delete=Table_Delete_Func(handles);
set(handles.Table,'Data',Table_Delete);

% --------------------------------------------------------------------
function ContextMenu_Insert_Callback(hObject, eventdata, handles)
% hObject    handle to ContextMenu_Insert (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Table_Insert=Table_Insert_Func(handles);
set(handles.Table,'Data',Table_Insert);


function edit_y_Callback(hObject, eventdata, handles)
% hObject    handle to edit_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_y as text
%        str2double(get(hObject,'String')) returns contents of edit_y as a double
global Data_y;
Data_y=str2num(get(hObject,'string'));

% --- Executes during object creation, after setting all properties.
function edit_y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_z_Callback(hObject, eventdata, handles)
% hObject    handle to edit_z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_z as text
%        str2double(get(hObject,'String')) returns contents of edit_z as a double
global Data_z;
Data_z=str2num(get(hObject,'string'));

% --- Executes during object creation, after setting all properties.
function edit_z_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Initial2_Button.
function Initial2_Button_Callback(hObject, eventdata, handles)
% hObject    handle to Initial2_Button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.Table,'Data',zeros(30,2));

% --- Executes on button press in Initial3_Button.
function Initial3_Button_Callback(hObject, eventdata, handles)
% hObject    handle to Initial3_Button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.Table,'Data',zeros(30,3));


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on slider movement.
function Line_Width_SliderBar_Callback(hObject, eventdata, handles)
% hObject    handle to Line_Width_SliderBar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
LineWidth_Func(handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function Line_Width_SliderBar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Line_Width_SliderBar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on selection change in Line_Color_PopMenu.
function Line_Color_PopMenu_Callback(hObject, eventdata, handles)
% hObject    handle to Line_Color_PopMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns Line_Color_PopMenu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Line_Color_PopMenu


% --- Executes during object creation, after setting all properties.
function Line_Color_PopMenu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Line_Color_PopMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in Line_Type_PopMenu.
function Line_Type_PopMenu_Callback(hObject, eventdata, handles)
% hObject    handle to Line_Type_PopMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns Line_Type_PopMenu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Line_Type_PopMenu


% --- Executes during object creation, after setting all properties.
function Line_Type_PopMenu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Line_Type_PopMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3


% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in DotType_PopMenu.
function DotType_PopMenu_Callback(hObject, eventdata, handles)
% hObject    handle to DotType_PopMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns DotType_PopMenu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from DotType_PopMenu


% --- Executes during object creation, after setting all properties.
function DotType_PopMenu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DotType_PopMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Paint_Cold_Button.
function Paint_Cold_Button_Callback(hObject, eventdata, handles)
% hObject    handle to Paint_Cold_Button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.Paint_Axes);
legend;
hold on


% --- Executes on button press in pushbutton19.
function pushbutton19_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function Title_edit_Callback(hObject, eventdata, handles)
% hObject    handle to Title_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Title_edit as text
%        str2double(get(hObject,'String')) returns contents of Title_edit as a double


% --- Executes during object creation, after setting all properties.
function Title_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Title_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton20.
function pushbutton20_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in listbox3.
function listbox3_Callback(hObject, eventdata, handles)
% hObject    handle to listbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox3


% --- Executes during object creation, after setting all properties.
function listbox3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function Az_SliderBar_Callback(hObject, eventdata, handles)
% hObject    handle to Az_SliderBar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Az_View=get(hObject,'Value');
axes(handles.Paint_Axes);
View_Array_Up=get(handles.Paint_Axes,'View');
Az_View_New_Up=Az_View;
El_View_New_Up=View_Array_Up(2);
view(Az_View_New_Up,El_View_New_Up);


% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function Az_SliderBar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Az_SliderBar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function El_SliderBar_Callback(hObject, eventdata, handles)
% hObject    handle to El_SliderBar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
El_View=get(hObject,'Value');
axes(handles.Paint_Axes);
View_Array_Down=get(handles.Paint_Axes,'View');
El_View_New_Down=El_View;
Az_View_New_Down=View_Array_Down(1);
view(Az_View_New_Down,El_View_New_Down);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function El_SliderBar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to El_SliderBar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in pushbutton21.
function pushbutton21_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Paint_Button.
% hObject    handle to Paint_Button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Axes_Done_Button.
function Axes_Done_Button_Callback(hObject, eventdata, handles)
% hObject    handle to Axes_Done_Button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Axes_Done_Func(handles);

% --- Executes on button press in Title_Done_Button.
function Title_Done_Button_Callback(hObject, eventdata, handles)
% hObject    handle to Title_Done_Button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Title_Done(handles);

% --- Executes on selection change in Paint_PopMenu_Chance.
function Paint_PopMenu_Chance_Callback(hObject, eventdata, handles)
% hObject    handle to Paint_PopMenu_Chance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns Paint_PopMenu_Chance contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Paint_PopMenu_Chance


% --- Executes during object creation, after setting all properties.
function Paint_PopMenu_Chance_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Paint_PopMenu_Chance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in Axes_Change_PopMenu.
function Axes_Change_PopMenu_Callback(hObject, eventdata, handles)
% hObject    handle to Axes_Change_PopMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% Hints: contents = cellstr(get(hObject,'String')) returns Axes_Change_PopMenu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Axes_Change_PopMenu


% --- Executes during object creation, after setting all properties.
function Axes_Change_PopMenu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Axes_Change_PopMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in Axes_Unit_Change.
function Axes_Unit_Change_Callback(hObject, eventdata, handles)
% hObject    handle to Axes_Unit_Change (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns Axes_Unit_Change contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Axes_Unit_Change


% --- Executes during object creation, after setting all properties.
function Axes_Unit_Change_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Axes_Unit_Change (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Paint_Button.
function Paint_Button_Callback(hObject, eventdata, handles)
% hObject    handle to Paint_Button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Paint_Times;
Paint_Func(handles);





function Legend_edit_Callback(hObject, eventdata, handles)
% hObject    handle to Legend_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Legend_edit as text
%        str2double(get(hObject,'String')) returns contents of Legend_edit as a double


% --- Executes during object creation, after setting all properties.
function Legend_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Legend_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Paint_Unfreez_Button.
function Paint_Unfreez_Button_Callback(hObject, eventdata, handles)
% hObject    handle to Paint_Unfreez_Button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Paint_Times;
axes(handles.Paint_Axes);
hold off
Paint_Times=1;



function Unit_Min_edit_Callback(hObject, eventdata, handles)
% hObject    handle to Unit_Min_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Unit_Min_edit as text
%        str2double(get(hObject,'String')) returns contents of Unit_Min_edit as a double


% --- Executes during object creation, after setting all properties.
function Unit_Min_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Unit_Min_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Unit_Max_edit_Callback(hObject, eventdata, handles)
% hObject    handle to Unit_Max_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Unit_Max_edit as text
%        str2double(get(hObject,'String')) returns contents of Unit_Max_edit as a double


% --- Executes during object creation, after setting all properties.
function Unit_Max_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Unit_Max_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Legend_Button.
function Legend_Button_Callback(hObject, eventdata, handles)
% hObject    handle to Legend_Button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Legend_Done_Func(handles);


% --- Executes on selection change in Line_Choose_PopMenu.
function Line_Choose_PopMenu_Callback(hObject, eventdata, handles)
% hObject    handle to Line_Choose_PopMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% Hints: contents = cellstr(get(hObject,'String')) returns Line_Choose_PopMenu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Line_Choose_PopMenu


% --- Executes during object creation, after setting all properties.
function Line_Choose_PopMenu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Line_Choose_PopMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Line_Done_Button.
function Line_Done_Button_Callback(hObject, eventdata, handles)
% hObject    handle to Line_Done_Button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Line_Choose_Func(handles);


% --- Executes on key press with focus on Line_Choose_PopMenu and none of its controls.
function Line_Choose_PopMenu_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to Line_Choose_PopMenu (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Line_Done_Button2.
function Line_Done_Button2_Callback(hObject, eventdata, handles)
% hObject    handle to Line_Done_Button2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Line_Done_Func(handles);


% --- Executes on slider movement.
function slider9_Callback(hObject, eventdata, handles)
% hObject    handle to Line_Width_SliderBar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Line_Width_SliderBar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --------------------------------------------------------------------
function Untitled_17_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Axes_Callback(hObject, eventdata, handles)
% hObject    handle to Axes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

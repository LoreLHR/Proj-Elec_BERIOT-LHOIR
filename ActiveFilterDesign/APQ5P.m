function varargout = APQ5P(varargin)

format long e;
% APQ5P M-file for APQ5P.fig
%      APQ5P, by itself, creates a new APQ5P or raises the existing
%      singleton*.
%
%      H = APQ5P returns the handle to a new APQ5P or the handle to
%      the existing singleton*.
%
%      APQ5P('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in APQ5P.M with the given input arguments.
%
%      APQ5P('Property','Value',...) creates a new APQ5P or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before APQ5P_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to APQ5P_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help APQ5P

% Last Modified by GUIDE v2.5 13-Apr-2006 23:23:05

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @APQ5P_OpeningFcn, ...
                   'gui_OutputFcn',  @APQ5P_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin & isstr(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before APQ5P is made visible.
function APQ5P_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to APQ5P (see VARARGIN)
movegui(hObject,'center')  % To display application in the center of screen

% Choose default command line output for APQ5P
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);


if strcmp(get(hObject,'Visible'),'off')
    initialize_gui(hObject, handles);
end

% UIWAIT makes APQ5P wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = APQ5P_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function fp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
usewhitebg = 1;
if usewhitebg
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


function fp_Callback(hObject, eventdata, handles)
% hObject    handle to fp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

fp = str2double(get(hObject, 'String'));
if isnan(fp)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

data = getappdata(gcbf, 'metricdata');
data.fp = fp;
setappdata(gcbf, 'metricdata', data);

% Hints: get(hObject,'String') returns contents of fp as text
%        str2double(get(hObject,'String')) returns contents of fp as a double


% --- Executes during object creation, after setting all properties.
function qp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to qp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
usewhitebg = 1;
if usewhitebg
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


function qp_Callback(hObject, eventdata, handles)
% hObject    handle to qp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

qp = str2double(get(hObject, 'String'));
if isnan(qp)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

data = getappdata(gcbf, 'metricdata');
data.qp = qp;
setappdata(gcbf, 'metricdata', data);


% Hints: get(hObject,'String') returns contents of qp as text
%        str2double(get(hObject,'String')) returns contents of qp as a double


% --- Executes during object creation, after setting all properties.
function C1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
usewhitebg = 1;
if usewhitebg
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


function C1_Callback(hObject, eventdata, handles)
% hObject    handle to C1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

C1 = str2double(get(hObject, 'String'));
if isnan(C1)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

data = getappdata(gcbf, 'metricdata');
data.C1 = C1;
setappdata(gcbf, 'metricdata', data);

% Hints: get(hObject,'String') returns contents of C1 as text
%        str2double(get(hObject,'String')) returns contents of C1 as a double


% --- Executes during object creation, after setting all properties.
function R4A_CreateFcn(hObject, eventdata, handles)
% hObject    handle to R4A (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
usewhitebg = 1;
if usewhitebg
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


function R4A_Callback(hObject, eventdata, handles)
% hObject    handle to R4A (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of R4A as text
%        str2double(get(hObject,'String')) returns contents of R4A as a double


% --- Executes during object creation, after setting all properties.
function R5A_CreateFcn(hObject, eventdata, handles)
% hObject    handle to R5A (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
usewhitebg = 1;
if usewhitebg
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


function R5A_Callback(hObject, eventdata, handles)
% hObject    handle to R5A (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of R5A as text
%        str2double(get(hObject,'String')) returns contents of R5A as a double


% --- Executes during object creation, after setting all properties.
function R6A_CreateFcn(hObject, eventdata, handles)
% hObject    handle to R6A (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
usewhitebg = 1;
if usewhitebg
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


function R6A_Callback(hObject, eventdata, handles)
% hObject    handle to R6A (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of R6A as text
%        str2double(get(hObject,'String')) returns contents of R6A as a double


% --- Executes during object creation, after setting all properties.
function R4B_CreateFcn(hObject, eventdata, handles)
% hObject    handle to R4B (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
usewhitebg = 1;
if usewhitebg
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


function R4B_Callback(hObject, eventdata, handles)
% hObject    handle to R4B (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of R4B as text
%        str2double(get(hObject,'String')) returns contents of R4B as a double


% --- Executes during object creation, after setting all properties.
function R5B_CreateFcn(hObject, eventdata, handles)
% hObject    handle to R5B (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
usewhitebg = 1;
if usewhitebg
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


function R5B_Callback(hObject, eventdata, handles)
% hObject    handle to R5B (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of R5B as text
%        str2double(get(hObject,'String')) returns contents of R5B as a double


% --- Executes during object creation, after setting all properties.
function R6B_CreateFcn(hObject, eventdata, handles)
% hObject    handle to R6B (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
usewhitebg = 1;
if usewhitebg
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


function R6B_Callback(hObject, eventdata, handles)
% hObject    handle to R6B (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of R6B as text
%        str2double(get(hObject,'String')) returns contents of R6B as a double


% --- Executes during object creation, after setting all properties.
function comments_CreateFcn(hObject, eventdata, handles)
% hObject    handle to comments (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
usewhitebg = 1;
if usewhitebg
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


function comments_Callback(hObject, eventdata, handles)
% hObject    handle to comments (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of comments as text
%        str2double(get(hObject,'String')) returns contents of comments as a double


% --- Executes on button press in calculate.
function calculate_Callback(hObject, eventdata, handles)
% hObject    handle to calculate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.comments, 'String', '');

data = getappdata(gcbf, 'metricdata');
f_p=data.fp;
q_p=data.qp;
C1=data.C1;
C2=data.C2;
C3=data.C3;

H=1-((C1+C2)*(C2+C3)*4*(q_p^2))/(C1*C2);

if H<0
    set(handles.comments, 'String', 'La condition suivante doit être remplie :         C1=C3>=(C2*2q_p)/(1-2q_p)');
else
    
    w_p=2*pi*f_p;
    R4A=(1-sqrt(H))/(2*(w_p^2)*(C2+C3));
    R4B=(1+sqrt(H))/(2*(w_p^2)*(C2+C3));
    R5A=(C1+C2)/(R4A*(w_p^2)*C1*C2*C3);
    R5B=(C1+C2)/(R4B*(w_p^2)*C1*C2*C3);
    R6A=1/((w_p^2)*C1*C2*(R4A+R5A));
    R6B=1/((w_p^2)*C1*C2*(R4B+R5B));
    
    set(handles.R4A, 'String', R4A);
    set(handles.R5A, 'String', R5A);
    set(handles.R6A, 'String', R6A);
    set(handles.R4B, 'String', R4B);
    set(handles.R5B, 'String', R5B);
    set(handles.R6B, 'String', R6B);
    
end;

function initialize_gui(fig_handle, handles)

data.fp = 0;
data.qp = 0;
data.C1 = 0;
data.C2 = 0;
data.C3 = 0;
data.R4A = 0;
data.R5A = 0;
data.R6A = 0;
data.R4B = 0;
data.R5B = 0;
data.R6B = 0;

setappdata(fig_handle, 'metricdata', data);

set(handles.fp, 'String', data.fp);
set(handles.qp, 'String', data.qp);
set(handles.C1, 'String', data.C1);
set(handles.C2, 'String', data.C2);
set(handles.C3, 'String', data.C3);
set(handles.R4A, 'String', data.R4A);
set(handles.R5A, 'String', data.R5A);
set(handles.R6A, 'String', data.R6A);
set(handles.R4B, 'String', data.R4B);
set(handles.R5B, 'String', data.R5B);
set(handles.R6B, 'String', data.R6B);

set(handles.comments,'String','Please, fill in the input values.');

im=imread('iAP-Q5-P.jpg');
set(handles.axes1,'HandleVisibility','ON'); 
axes(handles.axes1);
image(im);
axis equal; %sets the aspect ratio. (Show the image in its right ratio)
axis tight; %Sets the axis limits to the arrange of the data.
axis off; % Turn off all axis labeling 
set(handles.axes1,'HandleVisibility','OFF');  %After showed the image, let orgIm to be    


% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
initialize_gui(gcbf, handles);

% --- Executes on button press in graph.
function graph_Callback(hObject, eventdata, handles)
% hObject    handle to graph (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
data = getappdata(gcbf, 'metricdata');
f_p=data.fp;
q_p=data.qp;
C1=data.C1;
C2=data.C2;
C3=data.C3;

if ((f_p~=0)&&(q_p~=0))
    
    H=1-((C1+C2)*(C2+C3)*4*(q_p^2))/(C1*C2);
    if H<0
        set(handles.comments, 'String', 'Pas de graphique possible ');
    else
    
        w_p=2*pi*f_p;
        figure;
        freqs([1 -w_p/q_p w_p^2],[1 w_p/q_p w_p^2]);
    end;
    
else
    set(handles.comments, 'String', 'Impossible open the plot. Maybe, you have entered wrong input values.');
end;

% --- Executes on button press in mainmenu.
function mainmenu_Callback(hObject, eventdata, handles)
% hObject    handle to mainmenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;

% --- Executes during object creation, after setting all properties.
function C2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
usewhitebg = 1;
if usewhitebg
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


function C2_Callback(hObject, eventdata, handles)
% hObject    handle to C2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

C2 = str2double(get(hObject, 'String'));
if isnan(C2)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

data = getappdata(gcbf, 'metricdata');
data.C2 = C2;
setappdata(gcbf, 'metricdata', data);

% Hints: get(hObject,'String') returns contents of C2 as text
%        str2double(get(hObject,'String')) returns contents of C2 as a double


% --- Executes during object creation, after setting all properties.
function C3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
usewhitebg = 1;
if usewhitebg
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


function C3_Callback(hObject, eventdata, handles)
% hObject    handle to C3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

C3 = str2double(get(hObject, 'String'));
if isnan(C3)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

data = getappdata(gcbf, 'metricdata');
data.C3 = C3;
setappdata(gcbf, 'metricdata', data);

% Hints: get(hObject,'String') returns contents of C3 as text
%        str2double(get(hObject,'String')) returns contents of C3 as a double


% --- Executes on button press in multisim.
function multisim_Callback(hObject, eventdata, handles)
% hObject    handle to multisim (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.comments, 'String', ' You have created a Multisim file : temp.cir. Open this file with Multisim to use the filter ');

fid=fopen('temp.cir', 'w');
fprintf(fid, '');
fclose(fid);

%copy-paste
a=textread('APQ5P.cir','%s','delimiter', '');

%new values
R4=(get(handles.R4A, 'String'));
R5=(get(handles.R5A, 'String'));
R6=(get(handles.R6A, 'String'));
C1=(get(handles.C1, 'String'));
C2=(get(handles.C2, 'String'));
C3=(get(handles.C3, 'String'));

temp=char(a(4));
new=temp(1:8);
a{4}=[new R4];

temp=char(a(5));
new=temp(1:8);
a{5}=[new R5];

temp=char(a(6));
new=temp(1:8);
a{6}=[new R6];

temp=char(a(7));
new=temp(1:8);
a{7}=[new C1];

temp=char(a(8));
new=temp(1:8);
a{8}=[new C2];

temp=char(a(9));
new=temp(1:8);
a{9}=[new C3];

a=char(a);
diary temp.cir;
disp(a);
diary off;
clc;
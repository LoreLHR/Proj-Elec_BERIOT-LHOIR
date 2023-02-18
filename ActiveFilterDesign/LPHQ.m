function varargout = LPHQ(varargin)

format long e;
% LPHQ M-file for LPHQ.fig
%      LPHQ, by itself, creates a new LPHQ or raises the existing
%      singleton*.
%
%      H = LPHQ returns the handle to a new LPHQ or the handle to
%      the existing singleton*.
%
%      LPHQ('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LPHQ.M with the given input arguments.
%
%      LPHQ('Property','Value',...) creates a new LPHQ or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before LPHQ_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to LPHQ_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help LPHQ

% Last Modified by GUIDE v2.5 13-Apr-2006 19:03:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @LPHQ_OpeningFcn, ...
                   'gui_OutputFcn',  @LPHQ_OutputFcn, ...
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


% --- Executes just before LPHQ is made visible.
function LPHQ_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to LPHQ (see VARARGIN)
movegui(hObject,'center')  % To display application in the center of screen

% Choose default command line output for LPHQ
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

if strcmp(get(hObject,'Visible'),'off')
    initialize_gui(hObject, handles);
end

% UIWAIT makes LPHQ wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = LPHQ_OutputFcn(hObject, eventdata, handles)
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
%if ispc
    %set(hObject,'BackgroundColor','white');
    %else
    %set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
    %end
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
function C_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C (see GCBO)
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




function C_Callback(hObject, eventdata, handles)
% hObject    handle to C (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

C = str2double(get(hObject, 'String'));
if isnan(C)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

data = getappdata(gcbf, 'metricdata');
data.C = C;
setappdata(gcbf, 'metricdata', data);

% Hints: get(hObject,'String') returns contents of C as text
%        str2double(get(hObject,'String')) returns contents of C as a double

% --- Executes during object creation, after setting all properties.
function R0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to R0 (see GCBO)
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




function R0_Callback(hObject, eventdata, handles)
% hObject    handle to R0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of R0 as text
%        str2double(get(hObject,'String')) returns contents of R0 as a double


% --- Executes during object creation, after setting all properties.
function RD_CreateFcn(hObject, eventdata, handles)
% hObject    handle to RD (see GCBO)
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




function RD_Callback(hObject, eventdata, handles)
% hObject    handle to RD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

RD = str2double(get(hObject, 'String'));
if isnan(RD)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

data = getappdata(gcbf, 'metricdata');
data.RD = RD;
setappdata(gcbf, 'metricdata', data);


% Hints: get(hObject,'String') returns contents of RD as text
%        str2double(get(hObject,'String')) returns contents of RD as a double




% --- Executes during object creation, after setting all properties.
function R1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to R1 (see GCBO)
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




function R1_Callback(hObject, eventdata, handles)
% hObject    handle to R1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of R1 as text
%        str2double(get(hObject,'String')) returns contents of R1 as a double


% --- Executes during object creation, after setting all properties.
function R2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to R2 (see GCBO)
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




function R2_Callback(hObject, eventdata, handles)
% hObject    handle to R2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of R2 as text
%        str2double(get(hObject,'String')) returns contents of R2 as a double


% --- Executes during object creation, after setting all properties.
function R3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to R3 (see GCBO)
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




function R3_Callback(hObject, eventdata, handles)
% hObject    handle to R3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of R3 as text
%        str2double(get(hObject,'String')) returns contents of R3 as a double


% --- Executes during object creation, after setting all properties.
function R6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to R6 (see GCBO)
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




function R6_Callback(hObject, eventdata, handles)
% hObject    handle to R6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of R6 as text
%        str2double(get(hObject,'String')) returns contents of R6 as a double


% --- Executes during object creation, after setting all properties.
function R7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to R7 (see GCBO)
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




function R7_Callback(hObject, eventdata, handles)
% hObject    handle to R7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of R7 as text
%        str2double(get(hObject,'String')) returns contents of R7 as a double


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

% Hints: get(hObject,'String') returns contents of C1 as text
%        str2double(get(hObject,'String')) returns contents of C1 as a double


% --- Executes during object creation, after setting all properties.
function C4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C4 (see GCBO)
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




function C4_Callback(hObject, eventdata, handles)
% hObject    handle to C4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C4 as text
%        str2double(get(hObject,'String')) returns contents of C4 as a double


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
%R_discrete=0;

set(handles.comments, 'String', '');

data = getappdata(gcbf, 'metricdata');
f_p=data.fp;
q_p=data.qp;
C=data.C;
R_discrete=data.RD;
R_optimal=data.R0;

if (R_discrete==0)      %&(R_optimal==0)
    
    R_optimal=1/(2*pi*f_p*C);
    set(handles.R0, 'String', R_optimal);
    set(handles.comments, 'String', 'Ro is the optimal resistor for low GSP and Rd is the discrete resistor value, wich should be close to Ro. Please, enter now the Rd value and click on calculate. ');
    
else
    %fprintf('Valeur de la résistance R_optimal =%e ohm\n', R_optimal);
    %fprintf('Valeur de la résistance R11 =%e ohm\n', R11);
    %R_discrete=input('Maintenant, veuillez entrer la valeur de la résistance R_discrete = ');
    set(handles.comments, 'String', '');
    R_optimal=1/(2*pi*f_p*C);
    C1=C;
    C4=C;
    R2=R_discrete;
    R3=R_discrete;
    R6=R_discrete;
    R1=q_p*R_optimal;
    R7=(R_optimal^2)/R_discrete;
    %K=2;
    
    %set(handles.R0, 'String', R_optimal);
    set(handles.R1, 'string', R1);
    set(handles.R2, 'String', R2);
    set(handles.R3, 'String', R3);
    set(handles.R6, 'String', R6);
    set(handles.R7, 'String', R7);
    set(handles.C1, 'String', C1);
    set(handles.C4, 'String', C4);
    
end

function initialize_gui(fig_handle, handles)

%data = getappdata(gcbf, 'metricdata');

data.fp = 2.5e3;
data.qp = 30;
data.C = 68e-9;
data.RD = 0;
data.R0 = 0;
data.R1 = 0;
data.R2 = 0;
data.R3 = 0;
data.R6 = 0;
data.R7 = 0;
data.C1 = 0;
data.C4 = 0;

setappdata(fig_handle, 'metricdata', data);

set(handles.fp, 'String', data.fp);
set(handles.qp, 'String', data.qp);
set(handles.C, 'String', data.C);
set(handles.RD, 'String', data.RD);
set(handles.R0, 'String', data.R0);
set(handles.R1, 'String', data.R1);
set(handles.R2, 'String', data.R2);
set(handles.R3, 'String', data.R3);
set(handles.R6, 'String', data.R6);
set(handles.R7, 'String', data.R7);
set(handles.C1, 'String', data.C1);
set(handles.C4, 'String', data.C4);

set(handles.comments,'String','Please, fill in the input values.');

im=imread('iLP-HQ.jpg');

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
K=2;
if ((f_p~=0)&&(q_p~=0))
    w_p=2*pi*f_p;
    figure;
    freqs([K*(w_p^2)],[1 w_p/q_p w_p^2]);
else
    set(handles.comments, 'String', 'Impossible open the plot. Maybe, you have entered wrong input values.');
end;


% --- Executes on button press in mainmenu.
function mainmenu_Callback(hObject, eventdata, handles)
% hObject    handle to mainmenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

close;


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
a=textread('LPHQ.cir','%s','delimiter', '');

%new values
R1=(get(handles.R1, 'String'));
R6=(get(handles.R6, 'String'));
R7=(get(handles.R7, 'String'));
R2=(get(handles.R2, 'String'));
R3=(get(handles.R3, 'String'));
C1=(get(handles.C1, 'String'));
C4=(get(handles.C4, 'String'));

temp=char(a(4));
new=temp(1:8);
a{4}=[new R7];

temp=char(a(5));
new=temp(1:8);
a{5}=[new C4];

temp=char(a(6));
new=temp(1:8);
a{6}=[new R3];

temp=char(a(7));
new=temp(1:8);
a{7}=[new C1];

temp=char(a(8));
new=temp(1:8);
a{8}=[new R1];

temp=char(a(9));
new=temp(1:8);
a{9}=[new R2];

temp=char(a(10));
new=temp(1:8);
a{10}=[new R6];

a=char(a);
diary temp.cir;
disp(a);
diary off;
clc;
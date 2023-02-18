function varargout = BRLPNHPNMQ(varargin)

format long e;
% BRLPNHPNMQ M-file for BRLPNHPNMQ.fig
%      BRLPNHPNMQ, by itself, creates a new BRLPNHPNMQ or raises the existing
%      singleton*.
%
%      H = BRLPNHPNMQ returns the handle to a new BRLPNHPNMQ or the handle to
%      the existing singleton*.
%
%      BRLPNHPNMQ('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BRLPNHPNMQ.M with the given input arguments.
%
%      BRLPNHPNMQ('Property','Value',...) creates a new BRLPNHPNMQ or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before BRLPNHPNMQ_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to BRLPNHPNMQ_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help BRLPNHPNMQ

% Last Modified by GUIDE v2.5 13-Apr-2006 18:30:04

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @BRLPNHPNMQ_OpeningFcn, ...
                   'gui_OutputFcn',  @BRLPNHPNMQ_OutputFcn, ...
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


% --- Executes just before BRLPNHPNMQ is made visible.
function BRLPNHPNMQ_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to BRLPNHPNMQ (see VARARGIN)
movegui(hObject,'center')  % To display application in the center of screen

% Choose default command line output for BRLPNHPNMQ
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

if strcmp(get(hObject,'Visible'),'off')
    initialize_gui(hObject, handles);
end;

% UIWAIT makes BRLPNHPNMQ wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = BRLPNHPNMQ_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function fz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fz (see GCBO)
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




function fz_Callback(hObject, eventdata, handles)
% hObject    handle to fz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

fz = str2double(get(hObject, 'String'));
if isnan(fz)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

data = getappdata(gcbf, 'metricdata');
data.fz = fz;
setappdata(gcbf, 'metricdata', data);

% Hints: get(hObject,'String') returns contents of fz as text
%        str2double(get(hObject,'String')) returns contents of fz as a double


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

C4 = str2double(get(hObject, 'String'));
if isnan(C4)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

data = getappdata(gcbf, 'metricdata');
data.C4 = C4;
setappdata(gcbf, 'metricdata', data);

% Hints: get(hObject,'String') returns contents of C4 as text
%        str2double(get(hObject,'String')) returns contents of C4 as a double


% --- Executes during object creation, after setting all properties.
function R9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to R9 (see GCBO)
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



function R9_Callback(hObject, eventdata, handles)
% hObject    handle to R9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

R9 = str2double(get(hObject, 'String'));
if isnan(R9)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

data = getappdata(gcbf, 'metricdata');
data.R9 = R9;
setappdata(gcbf, 'metricdata', data);

% Hints: get(hObject,'String') returns contents of R9 as text
%        str2double(get(hObject,'String')) returns contents of R9 as a double


% --- Executes during object creation, after setting all properties.
function R5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to R5 (see GCBO)
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



function R5_Callback(hObject, eventdata, handles)
% hObject    handle to R5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of R5 as text
%        str2double(get(hObject,'String')) returns contents of R5 as a double


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
function R8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to R8 (see GCBO)
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




function R8_Callback(hObject, eventdata, handles)
% hObject    handle to R8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of R8 as text
%        str2double(get(hObject,'String')) returns contents of R8 as a double


% --- Executes during object creation, after setting all properties.
function R10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to R10 (see GCBO)
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



function R10_Callback(hObject, eventdata, handles)
% hObject    handle to R10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of R10 as text
%        str2double(get(hObject,'String')) returns contents of R10 as a double


% --- Executes during object creation, after setting all properties.
function K_CreateFcn(hObject, eventdata, handles)
% hObject    handle to K (see GCBO)
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




function K_Callback(hObject, eventdata, handles)
% hObject    handle to K (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of K as text
%        str2double(get(hObject,'String')) returns contents of K as a double


% --- Executes during object creation, after setting all properties.
function GSP_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GSP (see GCBO)
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




function GSP_Callback(hObject, eventdata, handles)
% hObject    handle to GSP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of GSP as text
%        str2double(get(hObject,'String')) returns contents of GSP as a double

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% --- Executes during object creation, after setting all properties.
function edit21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
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




function edit21_Callback(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit21 as text
%        str2double(get(hObject,'String')) returns contents of edit21 as a double
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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
f_z=data.fz;
f_p=data.fp;
q_p=data.qp;
C1=data.C1;
C2=data.C2;
C3=data.C3;
C4=data.C4;
R9=data.R9;

q_circ=1./(2*sqrt((1+(C2/C1))*(1+C2/C3)));
R5=1/(4*pi*f_z*q_circ*(C2+C3));
CS=(C1*C2)/(C1+C2);
R6=(1+C2/C1)/(R5*((2*pi*f_z)^2)*C2*C3);
RS=R5+R6;
R7=1/(((2*pi*f_z)^2)*C1*C2*RS);
H=((1+C4/CS)*((f_p/f_z)^2))-1;

if H<0
    
    %fprintf('C4 >= (((f_z/f_p)^2)-1)*((C1*C2)/(C1+C2)) \n\n');
    C4_ideal= ceil((((f_z/f_p)^2)-1)*((C1*C2)/(C1+C2)))
    set(handles.comments, 'String', sprintf('La condition suivante doit etre remplie :  C4 >= (((f_z/f_p)^2)-1)*((C1*C2)/(C1+C2))\n nous vous conseillons de mettre C4=%f',C4_ideal));
    
    set(handles.R5, 'String', '');
    set(handles.R6, 'String', '');
    set(handles.R7, 'String', '');
    set(handles.R8, 'String', '');
    set(handles.R10, 'String', '');
    set(handles.K, 'String', '');
    set(handles.GSP, 'String', '');

else
    if H==0
        R8=10^90;
    else
        R8=(R5+R6)/H;
    end;
    
    if R9==0
        R9=10^4;
    end;
    
    R10=R9*q_circ*((1/(R8*CS*2*pi*f_z))+(RS*C4*2*pi*f_z)-((1+(C4/CS))*(f_p/f_z)/q_p));
    GSP=q_p*((1+(R10/R9))^2)*((sqrt(R5*C3/(R6*CS))+sqrt(RS*C2/(R7*C1)))/((1+(C4/CS))*(f_p/f_z)));
    K=(1+(R10/R9))/(1+(C4/CS));
    
    set(handles.R5, 'String', R5);
    set(handles.R6, 'String', R6);
    set(handles.R7, 'String', R7);
    set(handles.R8, 'String', R8);
    set(handles.R10, 'String', R10);
    set(handles.K, 'String', K);
    set(handles.GSP, 'String', GSP);
    
end;

function initialize_gui(fig_handle, handles)
data.fz = 0;
data.fp = 0;
data.qp = 0;
data.C1 = 0;
data.C2 = 0;
data.C3 = 0;
data.C4 = 0;
data.R9 = 0;
setappdata(fig_handle, 'metricdata', data);

set(handles.fz, 'String', data.fz);
set(handles.fp, 'String', data.fp);
set(handles.qp, 'String', data.qp);
set(handles.C1, 'String', data.C1);
set(handles.C2, 'String', data.C2);
set(handles.C3, 'String', data.C3);
set(handles.C4, 'String', data.C4);
set(handles.R9, 'String', data.R9);
set(handles.R5, 'String', 0);
set(handles.R6, 'String', 0);
set(handles.R7, 'String', 0);
set(handles.R8, 'String', 0);
set(handles.R10, 'String', 0);
set(handles.K, 'String', 0);
set(handles.GSP, 'String', 0);

set(handles.comments,'String','Please, fill in the input values.');

im=imread('iBR-LPN-HPN-MQ.jpg');

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
f_z=data.fz;
f_p=data.fp;
q_p=data.qp;
K = str2double(get(handles.K, 'String'));

if ((f_p~=0)&&(q_p~=0)&&(K~=0))
    
    w_z=2*pi*f_z;
    w_p=2*pi*f_p;
    figure;
    freqs([K 0 K*(w_z^2)],[1 w_p/q_p w_p^2]);
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
a=textread('BRLPNHPNMQ.cir','%s','delimiter', '');

%new values
R5=(get(handles.R5, 'String'));
R6=(get(handles.R6, 'String'));
R7=(get(handles.R7, 'String'));
R8=(get(handles.R8, 'String'));
R9=(get(handles.R9, 'String'));
R10=(get(handles.R10, 'String'));
C1=(get(handles.C1, 'String'));
C2=(get(handles.C2, 'String'));
C3=(get(handles.C3, 'String'));
C4=(get(handles.C4, 'String'));

temp=char(a(4));
new=temp(1:8);
a{4}=[new R5];

temp=char(a(5));
new=temp(1:8);
a{5}=[new R6];

temp=char(a(6));
new=temp(1:8);
a{6}=[new R7];

temp=char(a(7));
new=temp(1:8);
a{7}=[new R8];

temp=char(a(8));
new=temp(1:8);
a{8}=[new R10];

temp=char(a(9));
new=temp(1:8);
a{9}=[new R9];

temp=char(a(10));
new=temp(1:8);
a{10}=[new C1];

temp=char(a(11));
new=temp(1:8);
a{11}=[new C2];

temp=char(a(12));
new=temp(1:8);
a{12}=[new C3];

temp=char(a(13));
new=temp(1:8);
a{13}=[new C4];

a=char(a);
diary temp.cir;
disp(a);
diary off;
clc;
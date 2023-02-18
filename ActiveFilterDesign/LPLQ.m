function varargout = LPLQ(varargin)

format long e;


% LPLQ M-file for LPLQ.fig
%      LPLQ, by itself, creates a new LPLQ or raises the existing
%      singleton*.
%
%      H = LPLQ returns the handle to a new LPLQ or the handle to
%      the existing singleton*.
%
%      LPLQ('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LPLQ.M with the given input arguments.
%
%      LPLQ('Property','Value',...) creates a new LPLQ or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before LPLQ_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to LPLQ_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help LPLQ

% Last Modified by GUIDE v2.5 12-Apr-2006 22:06:37

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @LPLQ_OpeningFcn, ...
                   'gui_OutputFcn',  @LPLQ_OutputFcn, ...
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


% --- Executes just before LPLQ is made visible.
function LPLQ_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to LPLQ (see VARARGIN)

% Choose default command line output for LPLQ
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);



if strcmp(get(hObject,'Visible'),'off')
    initialize_gui(hObject, handles);
end

% UIWAIT makes LPLQ wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = LPLQ_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function Kin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Kin (see GCBO)
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



function Kin_Callback(hObject, eventdata, handles)
% hObject    handle to Kin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Kin = str2double(get(hObject, 'String'));
if isnan(Kin)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

data = getappdata(gcbf, 'metricdata');
data.Kin = Kin;
setappdata(gcbf, 'metricdata', data);

% Hints: get(hObject,'String') returns contents of Kin as text
%        str2double(get(hObject,'String')) returns contents of Kin as a double


% --- Executes during object creation, after setting all properties.
function R11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to R11 (see GCBO)
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



function R11_Callback(hObject, eventdata, handles)
% hObject    handle to R11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of R11 as text
%        str2double(get(hObject,'String')) returns contents of R11 as a double


% --- Executes during object creation, after setting all properties.
function R12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to R12 (see GCBO)
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



function R12_Callback(hObject, eventdata, handles)
% hObject    handle to R12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of R12 as text
%        str2double(get(hObject,'String')) returns contents of R12 as a double


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


% --- Executes on button press in calculate.
function calculate_Callback(hObject, eventdata, handles)
% hObject    handle to calculate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.comments, 'String', '');

data = getappdata(gcbf, 'metricdata');
f_p=data.fp;
q_p=data.qp;
C2=data.C2;
C4=data.C4;
Kin=data.Kin;

if (1/(2*q_p^2)) * C2/C4 >=2;
    fprintf('%f\n\n');
    
    P=( (1/(2*q_p^2)) * C2/C4 -1) + sqrt( ((1/(2*q_p^2)) * C2/C4 -1)^2 -1 );
    R1=1/(2*pi*f_p*sqrt(P*C2*C4));
    R3=P*R1;
    GSP=q_p*sqrt(C2/(P*C4));
    
    if Kin==0 | 1-Kin <=0;
        R11=R1;
        R12='inf';
        K=1;
    else
        K=Kin;
        R11=R1*K;
        R12=R1/(1-K);
    end
    
    set(handles.R11, 'string', R11);
    set(handles.R12, 'String', R12);
    set(handles.R3, 'String', R3);
    set(handles.K, 'String', K);
    set(handles.GSP, 'String', GSP);
    %AXES§§§§
     %w_p=2*pi*f_p;
      %    img=imread(freqs([K*w_p^2],[1 w_p/q_p w_p^2]));
%imag=freqs([K*w_p^2],[1 w_p/q_p w_p^2]);
    % set(handles.axes1,'HandleVisibility','ON'); 
     %   axes(handles.axes1);
  %image(img);
     %set(handles.axes1,get(freqs([K*w_p^2],[1 w_p/q_p w_p^2])));      

 %    set(handles.axes1, ...
  %  'Visible', 'off', ...
   % 'YDir'   , 'reverse'       , ...
    %'XLim'   , get(img,'XData'), ...
    %'YLim'   , get(img,'YData')  ...
    %);


else
    set(handles.comments,'string','C2 >= 4*q_p^2*C4');
end



% --- Executes on button press in mainmenu.
function mainmenu_Callback(hObject, eventdata, handles)
% hObject    handle to mainmenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

close;

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

% Hints: get(hObject,'String') returns contents of fp as text
%        str2double(get(hObject,'String')) returns contents of fp as a double

fp = str2double(get(hObject, 'String'));
if isnan(fp)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

data = getappdata(gcbf, 'metricdata');
data.fp = fp;
setappdata(gcbf, 'metricdata', data);

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

% Hints: get(hObject,'String') returns contents of qp as text
%        str2double(get(hObject,'String')) returns contents of qp as a double

qp = str2double(get(hObject, 'String'));
if isnan(qp)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

data = getappdata(gcbf, 'metricdata');
data.qp = qp;
setappdata(gcbf, 'metricdata', data);

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

% Hints: get(hObject,'String') returns contents of C2 as text
%        str2double(get(hObject,'String')) returns contents of C2 as a double

C2 = str2double(get(hObject, 'String'));
if isnan(C2)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

data = getappdata(gcbf, 'metricdata');
data.C2 = C2;
setappdata(gcbf, 'metricdata', data);

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

C4 = str2double(get(hObject, 'String'));
if isnan(C4)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

data = getappdata(gcbf, 'metricdata');
data.C4 = C4;
setappdata(gcbf, 'metricdata', data);

% --- Executes during object creation, after setting all properties.
function edit22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Kin (see GCBO)
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


function edit22_Callback(hObject, eventdata, handles)
% hObject    handle to Kin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Kin as text
%        str2double(get(hObject,'String')) returns contents of Kin as a double




function initialize_gui(fig_handle, handles)

data.fp = 2.3e3;
data.qp = 1.2;
data.C2 = 27e-9;
data.C4 = 3.3e-9;
data.Kin = 0.6;
setappdata(fig_handle, 'metricdata', data);

set(handles.fp, 'String', data.fp);
set(handles.qp, 'String', data.qp);
set(handles.C2, 'String', data.C2);
set(handles.C4, 'String', data.C4);
set(handles.Kin, 'String', data.Kin);
set(handles.R11, 'String', 0);
set(handles.R12, 'String', 0);
set(handles.R3, 'String', 0);
set(handles.K, 'String', 0);
set(handles.GSP, 'String', 0);

set(handles.comments,'String','Please, fill in the input values.');

%im=imread('lplq_modif.bmp');%2/10
%im=imread('imaLPLQ.bmp');%5/10
im=imread('iLP-LQ.jpg');%7/10
%im=image_read('girl.bmp');%10/10

set(handles.axes1,'HandleVisibility','ON'); 
axes(handles.axes1);
%imagesc(im);
image(im);
%image('girl.bmp');
axis equal; %sets the aspect ratio. (Show the image in its right ratio)
axis tight; %Sets the axis limits to the arrange of the data.
axis off; % Turn off all axis labeling 
set(handles.axes1,'HandleVisibility','OFF');  %After showed the image, let orgIm to be    

%cla;

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
K = str2double(get(handles.K, 'String'));

if ((f_p~=0)&&(q_p~=0)&&(K~=0))
    
    w_p=2*pi*f_p;
    figure;
    freqs([K*w_p^2],[1 w_p/q_p w_p^2]);
    
else
    
    set(handles.comments, 'String', 'Impossible open the plot. Maybe, you have entered wrong input values.');
end;



% --- Executes on button press in multisim.
function multisim_Callback(hObject, eventdata, handles)
% hObject    handle to multisim (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.comments, 'String', ' You have created a Multisim file : temp.cir. Open this file with Multisim to use the filter ');

%the file text must be erased
fid=fopen('temp.cir', 'w');
fprintf(fid, '');
fclose(fid);

%copy-paste
a=textread('LPLQ.cir','%s','delimiter', '');

%new values
R11=(get(handles.R11, 'String'));
R12=(get(handles.R12, 'String'));
R3=(get(handles.R3, 'String'));
C2=(get(handles.C2, 'String'));
C4=(get(handles.C4, 'String'));

temp=char(a(4));
new=temp(1:8);
a{4}=[new R11];

temp=char(a(5));
new=temp(1:8);
a{5}=[new R12];

temp=char(a(6));
new=temp(1:8);
a{6}=[new C2];

temp=char(a(7));
new=temp(1:8);
a{7}=[new R3];

temp=char(a(8));
new=temp(1:8);
a{8}=[new C4];

a=char(a);
diary temp.cir;
disp(a);
diary off;
clc;



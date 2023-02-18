function varargout = mainmenu1(varargin)
% MAINMENU1 M-file for mainmenu1.fig
%      MAINMENU1, by itself, creates a new MAINMENU1 or raises the existing
%      singleton*.
%
%      H = MAINMENU1 returns the handle to a new MAINMENU1 or the handle to
%      the existing singleton*.
%
%      MAINMENU1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAINMENU1.M with the given input arguments.
%
%      MAINMENU1('Property','Value',...) creates a new MAINMENU1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before mainmenu1_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to mainmenu1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help mainmenu1

% Last Modified by GUIDE v2.5 03-Apr-2006 11:06:05

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @mainmenu1_OpeningFcn, ...
                   'gui_OutputFcn',  @mainmenu1_OutputFcn, ...
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

% --- Executes just before mainmenu1 is made visible.
function mainmenu1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to mainmenu1 (see VARARGIN)

% Choose default command line output for mainmenu1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes mainmenu1 wait for user response (see UIRESUME)
% uiwait(handles.mainmenu1);


% --- Outputs from this function are returned to the command line.
function varargout = mainmenu1_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


function select_Callback(hObject, eventdata, handles)
% hObject    handle to select (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

popup_sel_index = get(handles.wichfilter, 'Value');

switch popup_sel_index

    case 1
        
        LPLQ;
        
    case 2
        
        BPLQR;

    case 3
       
        BPLQC;
        
    case 4
        
        HPLQ;
        
    case 5
     
        APQ5P;
        
    case 6
       
        APQ5N;
        
    case 7
        
        APLQ;
        
    case 8
        
        BRLQ;
        
    case 9
        
        LPMQ;
        
    case 10
        
        BPMQR;
        
    case 11
        
        BPMQC;
        
    case 12
        
        HPMQ;
        
    case 13
        
        APMQ;
        
    case 14
        
        BRMQ;
        
    case 15
        
        LPNHPNMQ;
        
    case 16
        
        BRLPNHPNMQ;
        
    case 17
        
        LPHQ;
        
    case 18
        
        BPHQ;
        
    case 19
        
        HPHQ;
        
    case 20
        
        APHQ;
        
    case 21
        
        BRHQ;
        
    case 22
        
        LPNHPNHQ;
        
    case 23
        
        GP1;
        
    case 24
        
        GP2;
end




% --- Executes during object creation, after setting all properties.
function wichfilter_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wichfilter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


% --- Executes on selection change in wichfilter.
function wichfilter_Callback(hObject, eventdata, handles)
% hObject    handle to wichfilter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns wichfilter contents as cell array
%        contents{get(hObject,'Value')} returns selected item from wichfilter


popup_sel_index = get(handles.wichfilter, 'Value');

switch popup_sel_index

    case 1
        
        im=imread('iLP-LQ.jpg');
        
    case 2
        
        im=imread('iBP-LQ-R.jpg');


    case 3
       
        im=imread('iBP-LQ-C.jpg');
        
    case 4
        
        im=imread('iHP-LQ.jpg');
        
    case 5
     
        im=imread('iAP-Q5-P.jpg');
        
    case 6
       
        im=imread('iAP-Q5-N.jpg');
        
    case 7
        
        im=imread('iAP-LQ.jpg');
        
    case 8
        
        im=imread('iBR-LQ.jpg');
        
    case 9
        
        im=imread('iLP-MQ.jpg');
        
    case 10
        
        im=imread('iBP-MQ-R.jpg');
        
    case 11
        
        im=imread('iBP-MQ-C.jpg');
        
    case 12
        
        im=imread('iHP-MQ.jpg');
        
    case 13
        
        im=imread('iAP-MQ.jpg');
        
    case 14
        
        im=imread('iBR-MQ.jpg');
        
    case 15
        
        im=imread('iLPN-HPN-MQ.jpg');

        
    case 16
        
        im=imread('iBR-LPN-HPN-MQ.jpg');
        
    case 17
        
        im=imread('iLP-HQ.jpg');
        
    case 18
        
        im=imread('iBP-HQ.jpg');
        
    case 19
        
        im=imread('iHP-HQ.jpg');
        
    case 20
        
        im=imread('iAP-HQ.jpg');
        
    case 21
        
        im=imread('iBR-HQ.jpg');
        
    case 22
        
        im=imread('iLPN-HPN-HQ.jpg');
        
    case 23
        
        im=imread('iGP1.jpg');
        
    case 24
        
        im=imread('iGP2.jpg');
end



%popup_sel_names = get(handles.wichfilter, 'String');
%popup_sel_index = get(handles.wichfilter, 'Value');
%name_filter=popup_sel_names{popup_sel_index};
%nbr_characters=length(name_filter);
%type_fichier='.bmp';
%nom_fichier=['i' name_filter '.bmp'];

%im=imread(nom_fichier);

set(handles.axes1,'HandleVisibility','ON'); 
axes(handles.axes1);
image(im);
axis equal; %sets the aspect ratio. (Show the image in its right ratio)
axis tight; %Sets the axis limits to the arrange of the data.
axis off; % Turn off all axis labeling 
set(handles.axes1,'HandleVisibility','OFF');

% --- Executes on button press in select.

% --- Executes on button press in close.
function close_Callback(hObject, eventdata, handles)
% hObject    handle to close (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;
% --------------------------------------------------------------------


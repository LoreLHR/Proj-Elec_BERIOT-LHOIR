# -*- coding: utf-8 -*-
"""
Created on Thu Feb 23 15:05:48 2023

@author: Loren
"""

import streamlit as st # This must always be the first line of a streamlit app
from numpy import *
from matplotlib.pyplot import * # Needed for plotting
import matplotlib.pyplot as plt
import soundfile # Needed for playing sounds
import io # Needed for playing sounds
import plotly
def st_audio(A, samplerate=44100):
    byte_io = io.BytesIO()
    soundfile.write(byte_io, A, samplerate, subtype='FLOAT', format='WAV')
    st.audio(byte_io)

    
t=arange(-30,30,0.2)
fig,ax = subplots(figsize=(15,5))
st.title('Choose limit, test algorithm')
st.subheader('Type')
ch=st.radio('Choose filter type', ['Low pass', 'Band pass','Hight pass'])
st.subheader('Parameter')
if (ch=='Band pass'):
    w1=st.slider('Choose first frequency', 0, 10000)
    w2=st.slider('Choose second frequency', 0, 10000)
    st.subheader('Result')
    s1=w1*np.ones(t.size)
    s2=w2*np.ones(t.size) 
    plot(s1,t)
    plot(s2,t)
    st.pyplot(fig,ax)
else :     
    w=st.slider('Choose frequency', 0, 10000)
    st.subheader('Result')
    s=w*np.ones(t.size) 
    plot(s,t)
    st.pyplot(fig,ax)

    

# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
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
st.title('My first sine wave')
# Header
st.header("TEST")
 
# Subheader
st.subheader("This is a test 1")

a=st.slider('Amplitude a', 0.0, 10.0, 5.0)
f=st.slider('Frequency f [Hz]', 0, 10000, 440)
phi=st.slider('Phase phi [rad]', -pi, pi, 0.0)
fe = 100; # These are the three “computational” lines
t0 = arange(0,1,1/fe) 
t1 =arange(1,2,1/fe) 
t2=arange(2,3,1/fe) 
t3=arange(3,4,1/fe) 
t4=arange(4,5,1/fe) 
t=t0+t1+t2+t3+t4
signal = a*sin(2*pi*f*t0+phi)+a*sin(2*pi*(f+100)*t1+phi)+a*sin(2*pi*(f+200)*t2+phi)+a*sin(2*pi*(f+100)*t3+phi)+a*sin(2*pi*f*t4+phi)
st.latex('''a \sin(2 \pi f t + phi) <3''') 
fig,ax = subplots(figsize=(10,6))
xlim(0,5.010); ylim(-10, 10)
plot(t[0:500], signal[0:500])
xlabel('Time (seconds)') 
ylabel('Amp (units)')
st.pyplot(fig)
st_audio(signal,fe)

plt.plot(t,signal)
plt.plot(t0,t1)


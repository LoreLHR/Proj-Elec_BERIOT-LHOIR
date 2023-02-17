# -*- coding: utf-8 -*-


import streamlit as st # This must always be the first line of a streamlit app
from numpy import *
from matplotlib.pyplot import * # Needed for plotting
import soundfile # Needed for playing sounds
import io # Needed for playing sounds
def st_audio(signal, samplerate=44100):
 byte_io = io.BytesIO()
 soundfile.write(byte_io, signal, samplerate, format='WAV')
 st.audio(byte_io)
st.title('My first sine wave')
a=st.slider('Amplitude a', 0.0, 10.0, 5.0)
f=st.slider('Frequency f [Hz]', 0, 1000, 440)
phi=st.slider('Phase phi [rad]', -pi, pi, 0.0) 
fe = 10000; # These are the three “computational” lines
t = arange(0.0,1,1/fe)
signal = a*sin(2*pi*f*t+phi)
st.latex('''a \sin(2 \pi f t + phi)''')
fig,ax = subplots(figsize=(10,4))
xlim(0,0.010); ylim(-10, 10)
plot(t[0:100], signal[0:100])
xlabel('Time (seconds)')
st.pyplot(fig)
st_audio(signal,fe)
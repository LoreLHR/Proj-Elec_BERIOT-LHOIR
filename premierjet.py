# -*- coding: utf-8 -*-
"""
Created on Wed Feb 22 18:33:13 2023

@author: Jean Bériot
"""

import streamlit as st
import numpy as np
import soundfile as sf
import math as m

st.title("Synthèse de filtres RCAO")


st.header("Choix du filtre")
sel=st.selectbox("Avec quel type de filtre désirez-vous travailler?",['LPLQ (Low Pass Sallen-Key, Q<2)','HPLQ (High Pass Sallen-Key, Q<2)','LPMQ (Low Pass Sallen-Key, Q<5)','HPMQ (High Pass Sallen-Key, Q<5)'])

if sel =='LPLQ (Low Pass Sallen-Key, Q<2)':
   
   st.image('iLP-LQ.jpg')
   if st.checkbox('**Choisir ce filtre**:+1:',key=1):
       
       st.header("Entrée des paramètres du filtre")
       fp=st.number_input('**Choix de fp**',min_value=0.00,value=1000.00,step=None)
       st.write('Valeur de fp: ',fp,' Hertz???')
       qp=st.number_input('Choix de Qp',min_value=0.00,value=1.00,step=None)
       st.write('Valeur de Qp: ',qp)
       C2=st.number_input('Choix de C2',min_value=0.00,value=0.00001,step=None)
       st.write('Valeur de C2: ',C2,' Farads.')
       C4=st.number_input('Choix de C4',min_value=0.00,value=0.00000001,step=None)
       st.write('Valeur de C4: ',C4,' Farads.')
       k=st.number_input('Choix de K (<=1)',min_value=0.00,max_value=1.00,value=0.50,step=None)
       st.write('Valeur de K: ',k)
       
       if st.checkbox('**Valider les données**:+1:',key=2):
           
           if (1/(2*qp*qp)) * C2/C4 <=2:
               st.markdown(':warning:**:red[ERREUR]**:warning: **Il faut que**  $C2>=4*Qp^2*C4$')
               
           else :
               P = ( (1/(2*qp*qp)) * C2/C4 -1) + m.sqrt( ((1/(2*qp*qp)) * C2/C4 -1)*((1/(2*qp*qp)) * C2/C4 -1) -1 )
               R1 = 1/(2*m.pi*fp*m.sqrt(P*C2*C4))
               R3=P*R1
               GSP=qp*m.sqrt(C2/(P*C4));
               
               if k==0.00:
                   R11=R1
                   R12=float('inf')
                   k=1
            
               else :
                   R11=R1*k
                   R12=R1/(1-k)
           
           st.header('Données calculées:')
           st.write('**R11 =** ',R11,' Ohms.')
           st.write('**R12 =** ',R12,' Ohms.')
           st.write('**R3 =** ',R3,' Ohms.')
           st.write('**GSP =** ',GSP)
                        
                           
      
if sel =='HPLQ (High Pass Sallen-Key, Q<2)':
   
    st.image('iHP-LQ.jpg')
    if st.checkbox('**Choisir ce filtre**:+1:',key=3):
        
        st.header("Entrée des paramètres du filtre")
        fp=st.number_input('**Choix de fp**',min_value=0.00,value=1000.00,step=None)
        st.write('Valeur de fp: ',fp,' Hertz???')
        qp=st.number_input('Choix de Qp',min_value=0.00,value=1.00,step=None)
        st.write('Valeur de Qp: ',qp)
        C2=st.number_input('Choix de C2',min_value=0.00,value=0.00001,step=None)
        st.write('Valeur de C2: ',C2,' Farads.')
        C4=st.number_input('Choix de C4',min_value=0.00,value=0.00000001,step=None)
        st.write('Valeur de C4: ',C4,' Farads.')
        k=st.number_input('Choix de K (<=1)',min_value=0.00,max_value=1.00,value=0.50,step=None)
        st.write('Valeur de K: ',k)
        
        if st.checkbox('**Valider les données**:+1:',key=4):
            
            if (1/(2*qp*qp)) * C2/C4 <=2:
                st.markdown(':warning:**:red[ERREUR]**:warning: **Il faut que**  $C2>=4*Qp^2*C4$')
                
            else :
                P = ( (1/(2*qp*qp)) * C2/C4 -1) + m.sqrt( ((1/(2*qp*qp)) * C2/C4 -1)*((1/(2*qp*qp)) * C2/C4 -1) -1 )
                R1 = 1/(2*m.pi*fp*m.sqrt(P*C2*C4))
                R3=P*R1
                GSP=qp*m.sqrt(C2/(P*C4));
                
                if k==0.00:
                    R11=R1
                    R12=float('inf')
                    k=1
             
                else :
                    R11=R1*k
                    R12=R1/(1-k)
            
            st.header('Données calculées:')
            st.write('**R11 =** ',R11,' Ohms.')
            st.write('**R12 =** ',R12,' Ohms.')
            st.write('**R3 =** ',R3,' Ohms.')
            st.write('**GSP =** ',GSP)
                         
                            
    
if sel =='LPMQ (Low Pass Sallen-Key, Q<5)':
   
    st.image('iLP-MQ.jpg')
    if st.checkbox('**Choisir ce filtre**:+1:',key=5):
        
        st.header("Entrée des paramètres du filtre")
        fp=st.number_input('**Choix de fp**',min_value=0.00,value=1000.00,step=None)
        st.write('Valeur de fp: ',fp,' Hertz???')
        qp=st.number_input('Choix de Qp',min_value=0.00,value=1.00,step=None)
        st.write('Valeur de Qp: ',qp)
        C2=st.number_input('Choix de C2',min_value=0.00,value=0.00001,step=None)
        st.write('Valeur de C2: ',C2,' Farads.')
        C4=st.number_input('Choix de C4',min_value=0.00,value=0.00000001,step=None)
        st.write('Valeur de C4: ',C4,' Farads.')
        k=st.number_input('Choix de K (<=1)',min_value=0.00,max_value=1.00,value=0.50,step=None)
        st.write('Valeur de K: ',k)
        
        if st.checkbox('**Valider les données**:+1:',key=6):
            
            if (1/(2*qp*qp)) * C2/C4 <=2:
                st.markdown(':warning:**:red[ERREUR]**:warning: **Il faut que**  $C2>=4*Qp^2*C4$')
                
            else :
                P = ( (1/(2*qp*qp)) * C2/C4 -1) + m.sqrt( ((1/(2*qp*qp)) * C2/C4 -1)*((1/(2*qp*qp)) * C2/C4 -1) -1 )
                R1 = 1/(2*m.pi*fp*m.sqrt(P*C2*C4))
                R3=P*R1
                GSP=qp*m.sqrt(C2/(P*C4));
                
                if k==0.00:
                    R11=R1
                    R12=float('inf')
                    k=1
             
                else :
                    R11=R1*k
                    R12=R1/(1-k)
            
            st.header('Données calculées:')
            st.write('**R11 =** ',R11,' Ohms.')
            st.write('**R12 =** ',R12,' Ohms.')
            st.write('**R3 =** ',R3,' Ohms.')
            st.write('**GSP =** ',GSP)
                         
                            
    
if sel =='HPMQ (High Pass Sallen-Key, Q<5)':
   
    st.image('iHP-MQ.jpg')
    if st.checkbox('**Choisir ce filtre**:+1:',key=5):
        
        st.header("Entrée des paramètres du filtre")
        fp=st.number_input('**Choix de fp**',min_value=0.00,value=1000.00,step=None)
        st.write('Valeur de fp: ',fp,' Hertz???')
        qp=st.number_input('Choix de Qp',min_value=0.00,value=1.00,step=None)
        st.write('Valeur de Qp: ',qp)
        C2=st.number_input('Choix de C2',min_value=0.00,value=0.00001,step=None)
        st.write('Valeur de C2: ',C2,' Farads.')
        C4=st.number_input('Choix de C4',min_value=0.00,value=0.00000001,step=None)
        st.write('Valeur de C4: ',C4,' Farads.')
        k=st.number_input('Choix de K (<=1)',min_value=0.00,max_value=1.00,value=0.50,step=None)
        st.write('Valeur de K: ',k)
        
        if st.checkbox('**Valider les données**:+1:',key=6):
            
            if (1/(2*qp*qp)) * C2/C4 <=2:
                st.markdown(':warning:**:red[ERREUR]**:warning: **Il faut que**  $C2>=4*Qp^2*C4$')
                
            else :
                P = ( (1/(2*qp*qp)) * C2/C4 -1) + m.sqrt( ((1/(2*qp*qp)) * C2/C4 -1)*((1/(2*qp*qp)) * C2/C4 -1) -1 )
                R1 = 1/(2*m.pi*fp*m.sqrt(P*C2*C4))
                R3=P*R1
                GSP=qp*m.sqrt(C2/(P*C4));
                
                if k==0.00:
                    R11=R1
                    R12=float('inf')
                    k=1
             
                else :
                    R11=R1*k
                    R12=R1/(1-k)
            
            st.header('Données calculées:')
            st.write('**R11 =** ',R11,' Ohms.')
            st.write('**R12 =** ',R12,' Ohms.')
            st.write('**R3 =** ',R3,' Ohms.')
            st.write('**GSP =** ',GSP)

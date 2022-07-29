import streamlit as st
import pandas as pd

st.set_page_config(page_title='This is our beloved page tittle and will chance',
                    page_icon=':bar_chart:',
                    layout='wide')


@st.cache
def get_csv_as_df(file_name:str):
    df = pd.read_csv(f"./data/{file_name}.csv")
    return df



st.title('Our beloved site is in a WIP format')




st.markdown('------------')
st.write('## 📊 Data Vol')
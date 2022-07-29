#!/bin/sh

mkdir /media/share \
&& mount -t cifs -o rw,vers=3.0,credentials=/root/.credentials //192.168.2.110/poc /media/share

streamlit run app.py
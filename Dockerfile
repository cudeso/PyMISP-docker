FROM python:latest
MAINTAINER Koen Van Impe <koen.vanimpe@cudeso.be>

# Use cudeso repo pending PR accept
#RUN git clone https://github.com/cudeso/PyMISP.git
RUN git clone https://github.com/MISP/PyMISP.git

RUN pip3 install pymisp

# Provide keys.py when starting the container, for example
# docker run --rm --mount type=bind,source="$(pwd)"/config/keys.py,target=/PyMISP/examples/keys.py pymisp python3 /PyMISP/examples/stats_report.py -t 30d


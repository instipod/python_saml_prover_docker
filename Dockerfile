FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install python3 python3-pip git nano -y
RUN pip3 install flask attrs signxml lxml pyopenssl defusedxml pytz iso8601 wsgiserver

RUN mkdir /app
RUN cd /app && git clone https://github.com/instipod/python_saml_prover.git
RUN cd /app/python_saml_prover && git submodule init && git submodule sync && git submodule update
RUN rm /app/python_saml_prover/saml_config.py
COPY docker.sh /docker.sh

CMD /docker.sh

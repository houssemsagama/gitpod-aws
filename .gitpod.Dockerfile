FROM gitpod/workspace-full


RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"  && \
unzip awscliv2.zip && \
sudo ./aws/install
RUN sudo pip install apache-flink
COPY ./requirements.txt /home/requirements.txt
RUN sudo pip install -r /home/requirements.txt
USER gitpod

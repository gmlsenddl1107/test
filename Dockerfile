 

FROM pytorchlightning/pytorch_lightning:base-conda-py3.7-torch1.7

RUN apt-get update

RUN apt-get install -y apt-utils vim python3-pip

 

ENV TZ=Asia/Seoul

COPY . /project

RUN pip3 install -r /project/requirements.txt

ENTRYPOINT ["/bin/bash","/project/run.sh"]
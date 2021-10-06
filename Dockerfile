FROM continuumio/miniconda3:latest
LABEL authors="ypochien@gmail.com"
COPY environment.yml .
RUN conda env create -f environment.yml
RUN echo "conda activate py38env" >> ~/.bashrc

WORKDIR /home/work
EXPOSE 8888
ENTRYPOINT ["/bin/bash","--login","-c", "jupyter notebook --allow-root --ip=0.0.0.0"]


FROM tensorflow/tensorflow:latest-gpu

WORKDIR /jlabs

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt && rm requirements.txt

ENTRYPOINT ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--no-browser", "--NotebookApp.token=''", "--NotebookApp.password=''"]
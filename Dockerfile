FROM jupyterhub/jupyterhub

RUN conda install numpy -y
RUN conda install nglview -c bioconda -y
RUN conda install ambertools=16 -c hainm -y
RUN jupyter nbextension install --py --sys-prefix nglview
RUN jupyter nbextension enable --py --sys-prefix nglview
RUN groupadd jupyterhub
RUN useradd -m -d /home/hello/ -s /bin/bash -G jupyterhub hello

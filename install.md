- In one terminal
```bash
docker run -it --name jupyterhub -p 8000:8000 ambermd/amber_jupyterhub
```

- In another terminal

#### install some packages
```bash
docker exec -it jupyterhub bash
conda install numpy -y
conda install nglview -c bioconda -y
conda install ambertools -c hainm
```

#### add new user
```
groupadd jupyterhub
useradd -m -d /home/hello/ -s /bin/bash -G jupyterhub hello
```

- How user can run it locally?
Open `http://localhost:8000/`

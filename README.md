# Run docker image as a server

- start server

```bash
bash run_hub.sh
```

- try

  - Paste "http://127.0.0.1:8000/" to your web browser
  - Login with username='hello' and password=666666

# Run jupyterhub without docker

```bash
# require conda
bash setup_jupyterhub_without_docker.sh
source activate jupyterhub
jupyterhub
```

# Build docker image (developer)

```bash
docker build -t ambermd/amber-jupyterhub .
```


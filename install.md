- In one terminal
```bash
bash run_hub.sh
```

- In another terminal

#### add new user
```
docker exec -it jupyterhub bash
useradd -m -d /home/hello/ -s /bin/bash -G jupyterhub hello
```

- How user can run it locally?
Open `http://localhost:8000/`

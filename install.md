- In one terminal
```bash
bash run_hub.sh
```

- In another terminal

#### add new user
```
docker exec -it jupyterhub bash
useradd -m -d /home/hello/ -s /bin/bash -G jupyterhub hello
passwd hello # then update password here
```

- How user can run it locally?

    - Open `http://localhost:8000/`
    - Logging with username=`hello` and given password

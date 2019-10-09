sudo docker run --runtime=nvidia --name digits -d -p 5000:5000 nvidia/digits

# docker: Error response from daemon: Conflict. The container name "/digits" is already in use by container 
# "5af89a57ad751bbc444df8886cf58a1a06224eaa525d543f2cd4e3cd3df45775". You have to remove (or rename) that container to be able 
# to reuse that name.

 docker run --runtime=nvidia --name digits -d -p 5000:5000 -p 6006:6006 -v digits-jobs:/jobs nvidia/digits:6.0

# WARNING: Error loading config file: /home/arnav/.docker/config.json: stat /home/arnav/.docker/config.json: permission denied
# docker: Got permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: Post http://%2Fvar%2Frun%2Fdocker.sock/v1.40/containers/create?name=digits: dial unix /var/run/docker.sock: connect: permission denied.

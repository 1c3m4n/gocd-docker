docker --rm go_agent
docker run \
--name go_agent \
--link docker_server:go-server \
-d \
-v /var/run/docker.sock:/var/run/docker.sock \
-v /usr/bin/docker:/usr/bin/docker \
-v /lib/x86_64-linux-gnu/libdevmapper.so.1.02.1:/lib/x86_64-linux-gnu/libdevmapper.so.1.02.1 \
1c3m4n/go_agent 

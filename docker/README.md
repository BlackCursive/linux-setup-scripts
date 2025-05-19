## Install Portainer
```
docker volume create portainer_data
docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:lts
```
- Access Portainer on port 9443

#### Find your IP Address
```
ip a | grep 192
```
- Example
  - https://192.168.1.100:9443
___
 
## Install CIFS
```
sudo apt install cifs-utils
```

#### Update the filesystem table - Configuration file used for mounting and unmounting file systems 
```
sudo nano /etc/fstab
```
#### //IP Address/directory_on_the_server /director_on_the_host
```
//192.168.1.99/server /mnt/server cifs uid=1000,gid=1000,username=user,password=password,iocharset=utf8 0 0
```

#### Reload the configuration
```
sudo systemctl daemon-reload
```

#### Mount the share
```
sudo mount -a
```
## Check Docker Connection to VPN (Docker Host Machine)
#### Check the Public IP Address by reviewing logs - Replace (gluetun) with any container dependant on gluetun
```
docker logs gluetun
```
#### Replace (container_name) with the container you would liek to check the Public IP Address
```
docker exec -it conatiner_name bash
wget -qO- https://ipinfo.io
```

## Sonarr - TV Show Naming Convention
#### https://thetvdb.com/
The Office (US) (2005) {tvdb-73244}

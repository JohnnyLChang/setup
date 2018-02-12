#!/bin/bash

cat << EOF >> /etc/munin/munin.conf
[$NAME]
    address $HOST
    use_node_name yes
    port $PORT

EOF


cat << EOF > /usr/bin/flameshot.sh
#!/bin/bash
KEY=$(xauth list  | grep $(hostname) | awk '{ print $3 }' | head -n 1)
DCK_HOST=docker-flameshot
xauth add $DCK_HOST/unix:0 . $KEY

docker run -it --rm \
    -e DISPLAY=$DISPLAY \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v ~/.Xauthority:/root/.Xauthority \
    -e XAUTHORITY=/root/.Xauthority \
    -h $DCK_HOST \
    --net=host \
    --env="QT_X11_NO_MITSHM=1" \
    --privileged \
    --name flameshot$USER \
    manuellr/flameshot
EOF
echo "flameshot.sh created in /usr/bin"

sudo chmod +x /usr/bin/flameshot.sh

# add alias
if ! `grep -q "flameshot" ~/.bash_alias`; then
    echo "alias flame='/usr/bin/flameshot'" >> ~/.bash_aliases
fi

    #!/bin/bash
     
    # simple vagrant provisioning script
    # installs : apache2, php 5.4 and mysql-server and client
    # installs : laravel in /vagrant shared folder
     
    # some coloring in outputs.
    COLOR="\033[;35m"
    COLOR_RST="\033[0m"
     
    echo -e "${COLOR}---updating system---${COLOR_RST}"
    apt-get update
     
    echo -e "${COLOR}---installing some tools: zip,unzip,curl, python-software-properties---${COLOR_RST}"
     
    apt-get install -y python-software-properties
    apt-get install -y zip unzip
    apt-get install -y curl
     
    # installing ngnix
    echo -e "${COLOR}---installing Apache---${COLOR_RST}"
	apt-get install -y nginx
     
    echo -e "${COLOR}---update again---${COLOR_RST}"
    apt-get update
     
    # restart apache2
    echo -e "${COLOR}---restarting ngnix---${COLOR_RST}"
    service ngnix restart
     
    # done :)
    # test your installation by visiting 192.168.10.200 from your host.

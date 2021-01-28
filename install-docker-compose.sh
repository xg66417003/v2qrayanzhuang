    echo -e "Starting installing Docker "
    curl -fsSL https://get.docker.com -o get-docker.sh
    bash get-docker.sh
    echo -e "Starting installing Docker Compose "
    curl -L https://github.com/docker/compose/releases/download/1.17.1/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
    chmod +x /usr/local/bin/docker-compose
    curl -L https://raw.githubusercontent.com/docker/compose/1.8.0/contrib/completion/bash/docker-compose > /etc/bash_completion.d/docker-compose
    clear
    echo "Start Docker "
    service docker start
    echo -e "Congratulations, docker-compose install completed!"
    echo
    echo "Enjoy it!"
    echo

cd ~
git clone --recursive https://github.com/blomma/bootstrap.git
cd bootstrap

PLATFORM=(uname -s | tr '[:upper:]' '[:lower:]')

if [ -f "$PLATFORM-bootstrap.sh" ]
    bash source "$PLATFORM-bootstrap.sh"
then
fi

# bash bootstrap.sh

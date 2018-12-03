PLATFORM=$(uname -s | tr '[:upper:]' '[:lower:]')
DISTRO=$(lsb_release -is | tr '[:upper:]' '[:lower:]')

if [ -f "distro/bootstrap-$DISTRO.sh" ]; then
    source "distro/bootstrap-$DISTRO.sh"
elif [ -f "platform/bootstrap-$PLATFORM.sh" ]; then
    source "platform/bootstrap-$PLATFORM.sh"
fi

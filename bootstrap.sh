PLATFORM=$(uname -s | tr '[:upper:]' '[:lower:]')

if [ -f "bootstrap-$PLATFORM.sh" ]
then
    source "bootstrap-$PLATFORM.sh"
fi
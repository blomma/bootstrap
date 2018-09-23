PLATFORM=$(uname -s | tr '[:upper:]' '[:lower:]')

if [ -f "$PLATFORM-bootstrap.sh" ]
then
    source "$PLATFORM-bootstrap.sh"
fi
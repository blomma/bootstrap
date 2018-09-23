PLATFORM=$(uname -s | tr '[:upper:]' '[:lower:]')

if [ -f "$PLATFORM-bootstrap.sh" ]
    source "$PLATFORM-bootstrap.sh"
then
fi
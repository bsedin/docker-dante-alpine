#!/bin/sh

# Create users
if [ "$DANTE_USER" ]; then
  adduser -D -H -s /bin/sh $DANTE_USER
  echo $DANTE_USER:$DANTE_PASSWORD | chpasswd
fi

exec "$@"

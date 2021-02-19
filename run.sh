#!/bin/bash

cat << EOK > /tmp/keepalive.sh
#!/bin/bash
echo \$$ > /tmp/keepalive.pid
while true; do
  echo "ALIVE" && sleep 120
done
EOK
chmod a+x /tmp/keepalive.sh
bash /tmp/keepalive.sh

export DOCKERHOST=$(ifconfig | grep -E "([0-9]{1,3}\.){3}[0-9]{1,3}" | grep -v 127.0.0.1 | awk '{ print $2 }' | cut -f2 -d: | head -n1)
docker-compose -p dockpoa -f docker-compose.dock.yml up -d mysql

echo "waiting some time to let mysql setup"
sleep 120s
echo "launching..."
docker-compose -p dockpoa -f docker-compose.dock.yml up --build

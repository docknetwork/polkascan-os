export DOCKERHOST=3.128.224.235
docker-compose -p dockpoa -f docker-compose.dock.yml up -d mysql

echo "waiting some time to let mysql setup"
sleep 120s
echo "launching..."
docker-compose -p dockpoa -f docker-compose.dock.yml up --build

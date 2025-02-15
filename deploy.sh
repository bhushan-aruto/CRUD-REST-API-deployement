#!/bin/bashii

SSH="ssh -i ./crud-server-access-key.pem ubuntu@ec2-34-227-20-141.compute-1.amazonaws.com"
PROJECT_GIT_URL="https://github.com/bhushan-aruto/CRUD-REST-API-GO.git";

$SSH "sudo rm -rf /home/ubuntu/*"

$SSH "git clone $PROJECT_GIT_URL /home/ubuntu/project1" &> /dev/null

cat .env |  $SSH "cat > /home/ubuntu/.env"

echo "Running go mod tidy..🔧 "

$SSH "/usr/local/go/bin/go mod tidy -C /home/ubuntu/project1" &> /dev/null

echo "Building go project...⚙️"

$SSH "/usr/local/go/bin/go build -C  /home/ubuntu/project1/" &> /dev/null

echo "Running the built binary.....🚀"

$SSH "SERVER_MODE=dev /home/ubuntu/project1/ice_cream_shop_rest_api" 








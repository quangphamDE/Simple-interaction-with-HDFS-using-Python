# Lấy IP của container datanode

$container_name = "datanode"
$ip_address = docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $container_name

# Kiểm tra nếu không lấy được IP
if (-not $ip_address) {
    Write-Host "Not found IP of container $container_name"
    exit 1
}

# Đọc file docker-compose.yml
$docker_compose_file = "docker-compose.yml"
$new_host = "localhost:$ip_address"
(gc $docker_compose_file) -replace 'localhost:[^]]*', $new_host | Out-File -encoding ASCII $docker_compose_file

docker-compose down
docker-compose up -d

Write-Host "Update with new IP: $ip_address"

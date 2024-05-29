#set env vars
set -o allexport; source .env; set +o allexport;

mkdir -p ./prometheus_data
chown -R 1000:1000 ./prometheus_data

cat <<EOT > ./servers.json
{
    "Servers": {
        "1": {
            "Name": "local",
            "Group": "Servers",
            "Host": "172.17.0.1",
            "Port": 61645,
            "MaintenanceDB": "postgres",
            "SSLMode": "prefer",
            "Username": "postgres",
            "PassFile": "/pgpass"
        }
    }
}
EOT
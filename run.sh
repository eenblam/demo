source .env

bash install-docker.sh
bash lets-encrypt.sh
# Requires copying Vault keys and root token, then pasting 3 keys back
bash vault.sh
# Vault root token will needed for this script and for docker-compose
echo Paste the root token generated by Vault
read VAULT_TOKEN
export VAULT_TOKEN
bash logstash.sh

docker-compose up

docker run \
 --name=zabbix-agent2 \
 -h $(hostname) \
 -v /:/rootfs \
 -v /var/run:/var/run \
 -e "ZBX_SERVER_HOST=192.168.16.1" \
 -e "ZBX_SERVER_PORT=10051" \
 -e "ZBX_ACTIVE_ALLOW=true" \
 -d zabbix/zabbix-agent:latest

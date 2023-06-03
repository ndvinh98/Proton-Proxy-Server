# Proton-Proxy-Server
Deploy ProtonVPN as Free Proxy Server


# How to use
Rename .env.example -> .env

Fill your account credentials 
```
PROTONVPN_SERVER=your_dns_proton_vpn_here
WIREGUARD_PRIVATE_KEY=wireguard_key_generated_in_dashboard
EXPOSE_PROXY_PORT=8400
ALLOWED_IPS=your_private_ip
```
Deploy: ```docker-compose up -d```

For testing: ```curl --socks5 localhost:8400 https://ifcfg.co ```

# start go-sock5 proxy standalone
```docker run -d --restart always --name socks5 -p 8400:9090 -e PROXY_PORT=9090 -e ALLOWED_IPS=my_private_ip serjs/go-socks5-proxy```

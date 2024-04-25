FROM caddy:2
ADD Caddyfile /etc/caddy/Caddyfile
EXPOSE 80

# Run caddy when the container launches
CMD ["caddy", "run", "--config", "/etc/caddy/Caddyfile"]
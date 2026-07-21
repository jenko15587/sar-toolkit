FROM nginx:alpine

# Copy site files
COPY index.html /usr/share/nginx/html/index.html

# Minimal nginx config — single page app, no directory listing
RUN printf 'server {\n\
    listen 80;\n\
    server_name _;\n\
    root /usr/share/nginx/html;\n\
    index index.html;\n\
    location / {\n\
        try_files $uri $uri/ /index.html;\n\
    }\n\
    gzip on;\n\
    gzip_types text/html text/css application/javascript;\n\
}\n' > /etc/nginx/conf.d/default.conf

EXPOSE 80

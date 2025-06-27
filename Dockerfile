FROM nginx:alpine

# Copy your static site files to nginx html directory
COPY ./html /usr/share/nginx/html

# Copy custom nginx config
COPY portfolio.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
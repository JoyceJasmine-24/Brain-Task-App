# Use a lightweight Nginx web server web block
FROM nginx:alpine

# Copy the pre-built dist folder directly into Nginx's public folder
COPY dist /usr/share/nginx/html

# Expose port 80 inside the container
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
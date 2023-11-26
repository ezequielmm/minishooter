# Use the NGINX base image
FROM nginx:latest

# Copy index.html, Build folder, and TemplateData folder to NGINX HTML directory
COPY index.html /usr/share/nginx/html/
COPY Build /usr/share/nginx/html/Build
COPY TemplateData /usr/share/nginx/html/TemplateData

# Expose port 80
EXPOSE 80

# Start NGINX when the container launches
CMD ["nginx", "-g", "daemon off;"]

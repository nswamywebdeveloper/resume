# Step 1: Use an official Nginx image from Docker Hub
FROM nginx:latest

# Step 2: Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Step 3: Copy your resume web application files into the container
COPY . /usr/share/nginx/html/

# Step 4: Expose port 80 (the default port for Nginx)
EXPOSE 80

# Step 5: Start Nginx server (this is the default CMD in the nginx image)
CMD ["nginx", "-g", "daemon off;"]

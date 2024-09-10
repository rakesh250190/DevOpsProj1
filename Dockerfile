FROM devopsedu/webapp

# Copy app files from the app directory.
COPY . /var/www/html

# Switch to a non-privileged user (defined in the base image) that the app will run under.
# See https://docs.docker.com/go/dockerfile-user-best-practices/
ENTRYPOINT ["/bin/sh","-c","php","/var/www/html/index.html"]
EXPOSE 80

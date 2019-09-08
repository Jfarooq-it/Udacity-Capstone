FROM nginx
COPY index.html /usr/share/nginx/html
EXPOSE 8080
CMD ["nginx"]

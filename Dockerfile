FROM nginx
WORKDIR /app
COPY . /app/
EXPOSE 8080
CMD ["nginx"]

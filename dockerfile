FROM nginx:latest
WORKDIR /app
COPY ./templatemo_500_fluid_gallery .
RUN rm -rf /usr/share/nginx/html/*
COPY ./templatemo_500_fluid_gallery /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
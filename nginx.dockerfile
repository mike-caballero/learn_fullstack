# Build: docker build -f nginx.dockerfile --no-cache -t nginx .
# Run: docker run -p 80:80 nginx

FROM nginx:1.25
COPY --from=learn_fullstack-frontend /frontend/build /usr/share/nginx/html
COPY ./nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
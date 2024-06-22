FROM golang:1.22.0 as builder

WORKDIR /app
RUN apt-get update && apt-get install -y hugo
RUN go install github.com/Ladicle/tcardgen@latest

COPY ./ ./

# Generate feature.png
RUN bash tcardgen/run.sh

# Generate static site
RUN hugo


FROM nginx:1.23.4
COPY --from=builder /app/public /app/public
COPY ./nginx.conf /etc/nginx/conf.d/

EXPOSE 8000
CMD ["nginx", "-g", "daemon off;"]

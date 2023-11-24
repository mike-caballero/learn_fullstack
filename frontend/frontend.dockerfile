# Run with:
# 1. Build image: docker build -f frontend/frontend.dockerfile --no-cache -t frontend ./frontend
# 2. Run container: docker run frontend

FROM node:21

# Create the working directory and copy all /frontend files to it, then install all packages
WORKDIR /frontend
COPY . .
RUN yarn install
RUN yarn build
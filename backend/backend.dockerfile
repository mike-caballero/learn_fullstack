# Run with:
# 1. Build image: docker build -f backend/backend.dockerfile --no-cache -t backend ./backend
# 2. Run container: docker run -p 8000:8000 backend

FROM python:3.8

# Create the working directory and copy all /backend files to it
WORKDIR /backend
COPY . .

# Install dependencies without caching
RUN pip install --no-cache-dir -r requirements.txt

# Run app.py when the container launches
ENV PORT=8000
EXPOSE $PORT
CMD gunicorn --bind 0.0.0.0:$PORT run:app

# Use the official Funkwhale all-in-one image as base
FROM funkwhale/all-in-one:latest

# Set your Funkwhale hostname here
ENV FUNKWHALE_HOSTNAME=beatsrender.onrender.com

# Optional: You can add other Funkwhale environment variables here if needed
# ENV FUNKWHALE_API_IP=0.0.0.0

# Tell Docker what port to expose (not mandatory, just metadata)
EXPOSE 5000

# Start gunicorn and bind to 0.0.0.0:$PORT (use Render's PORT env variable)
CMD ["sh", "-c", "gunicorn -b 0.0.0.0:${PORT} config.asgi:application"]

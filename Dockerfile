FROM jellyfin/jellyfin:latest

# Optional: Expose volumes (Render doesn't persist them directly)
VOLUME /config
VOLUME /cache
VOLUME /media

# Jellyfin runs on port 8096 by default
EXPOSE 8096

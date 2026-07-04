# Github@bainiao0706 https://github.com/bainiao0706/SillyTavern-OHFS Stars appreciated.
FROM node:18-alpine

# Install essential system utilities
RUN apk add --no-cache git shadow

# Set temporary workspace for building dependencies locally
WORKDIR /app

# Clone production source and install node modules into local container storage (/app)
RUN git clone https://github.com/SillyTavern/SillyTavern.git /app && \
    npm install --only=production

# Set standard application runtime environments
ENV BACKGROUND_COLOR=black
ENV NODE_ENV=production

# Expose internal service port
EXPOSE 7860

# Runtime pipeline: Clean Storage Init -> Symlink Junction -> Launch
CMD echo "[INFO] Starting SillyTavern..." && \
    if [ ! -f /data/server.js ]; then \
      echo "[INFO] /data is empty. Performing clean clone into persistent storage..." && \
      git clone https://github.com/SillyTavern/SillyTavern.git /data; \
    fi && \
    echo "[INFO] Resolving NFS directory locks and establishing symlinks..." && \
    if [ -d /data/node_modules ] && [ ! -L /data/node_modules ]; then \
        mv /data/node_modules /data/.legacy_node_modules_$(date +%s) 2>/dev/null || rm -rf /data/node_modules; \
    fi && \
    ln -sf /app/node_modules /data/node_modules && \
    echo "[INFO] Redirecting workspace environment and launching server..." && \
    cd /data && DATA_DIR=/data node server.js

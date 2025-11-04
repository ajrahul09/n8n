# Base image: official n8n
FROM n8nio/n8n:latest

# Set working directory
WORKDIR /home/node/

# Fix permissions warning
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Expose n8n default port
EXPOSE 5678

# Use the absolute path to n8n binary to avoid "command not found" errors
CMD ["node", "/usr/local/lib/node_modules/n8n/bin/n8n"]

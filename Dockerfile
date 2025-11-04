# Stage 1: Base official image
FROM n8nio/n8n:latest

# Ensure correct working directory
WORKDIR /data

# Set permissions enforcement
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Expose default port
EXPOSE 5678

# Use npx to run n8n via the globally installed package
ENTRYPOINT ["npx", "n8n", "start"]

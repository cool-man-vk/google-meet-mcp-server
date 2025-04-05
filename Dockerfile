# Generated by https://smithery.ai. See: https://smithery.ai/docs/config#dockerfile
FROM node:lts-alpine

WORKDIR /app

# Install dependencies
COPY package.json ./
# If a package-lock.json exists, uncomment the next line
# COPY package-lock.json ./
RUN npm install --ignore-scripts

# Copy project files
COPY . .

# Set default environment variables required for Google Meet MCP server
ENV GOOGLE_MEET_CREDENTIALS_PATH=credentials.json
ENV GOOGLE_MEET_TOKEN_PATH=token.json

# Start the MCP server
CMD ["node", "src/index.js"]

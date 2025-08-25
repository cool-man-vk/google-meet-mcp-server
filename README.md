[![MseeP.ai Security Assessment Badge](https://mseep.net/mseep-audited.png)](https://mseep.ai/app/cool-man-vk-google-meet-mcp-server)

# Google Meet MCP Server

[![smithery badge](https://smithery.ai/badge/@cool-man-vk/google-meet-mcp-server)](https://smithery.ai/server/@cool-man-vk/google-meet-mcp-server)

A Model Context Protocol (MCP) server for interacting with Google Meet through the Google Calendar API. This server provides tools for creating and managing Google Meet meetings programmatically.

## Description

This project implements an MCP server that allows AI agents to interact with Google Meet by creating, retrieving, and managing meetings through the Google Calendar API. It leverages the MCP (Model Context Protocol) specification to expose these capabilities as tools that can be used by compatible AI systems.

## Installation

### Installing via Smithery

To install Google Meet MCP Server for Claude Desktop automatically via [Smithery](https://smithery.ai/server/@cool-man-vk/google-meet-mcp-server):

```bash
npx -y @smithery/cli install @cool-man-vk/google-meet-mcp-server --client claude
```

### Manual Installation
```bash
# Clone the repository
git clone https://github.com/yourusername/google-meet-mcp.git

# Navigate to the project directory
cd google-meet-mcp

# Install dependencies
npm install
```

## Setup

Before using the Google Meet MCP server, you need to set up your Google API credentials:

1. Visit the [Google Cloud Console](https://console.cloud.google.com/)
2. Create a new project or select an existing one
3. Enable the Google Calendar API
4. Create OAuth 2.0 credentials (Desktop application)
5. Download the credentials JSON file and save it as `credentials.json` in the project root directory
6. Run the setup script to authenticate and generate the token:

```bash
npm run setup
```

This will open a browser window where you can authorize the application to access your Google Calendar.

## Usage

Once setup is complete, you can start the MCP server:

```bash
npm run start
```

The server will run and expose the following tools:

- `create-meeting`: Create a new Google Meet meeting
- `list-meetings`: List upcoming Google Meet meetings
- `get-meeting-details`: Get details about a specific meeting
- `update-meeting`: Update an existing meeting
- `delete-meeting`: Delete a meeting

## MCP Configuration

To use this server with MCP-compatible systems, add the following to your MCP settings configuration file:

```json
{
  "mcpServers": {
    "google-meet": {
      "command": "node",
      "args": ["path/to/google-meet-mcp/src/index.js"],
      "env": {},
      "disabled": false
    }
  }
}
```

## Features

- Create Google Meet meetings with custom settings
- Retrieve meeting details including join URLs
- Update existing meetings
- Delete meetings
- List upcoming meetings

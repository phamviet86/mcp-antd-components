# Ant Design Components Model Context Protocol Server

A Model Context Protocol (MCP) server that exposes Ant Design component documentation to Large Language Models (LLMs) like Claude. This server allows an LLM to explore and understand Ant Design components through a set of specialized tools.

## Features

- Easy to use - no need to clone the entire Ant Design repository
- Pre-extracted component documentation for faster startup
- List all available Ant Design components
- Get detailed component documentation including descriptions and usage
- View component props and API definitions
- Browse code examples for specific components
- Search for components by name or functionality

## Installation Instructions

Follow these steps to set up the MCP server from scratch:

### Step 1: Clone the Repository

```bash
# Clone the MCP Ant Design Components repository
git clone https://github.com/hannesj/mcp-antd-components.git mcp-antd
cd mcp-antd
```

### Step 2: Install Dependencies

```bash
# Install Node.js dependencies
npm install
```

### Step 3: Extract Documentation (Skip if data already exists)

**If the `data/` directory already exists** (with `components-index.json`, `metadata.json`, and `components/` folder), you can skip this step and go directly to Step 4.

**If you need to extract documentation** (for new installations or updates):

```bash
# Remove existing data directory if it exists (to ensure clean extraction)
rm -rf data

# Clone the official Ant Design repository (temporary)
git clone https://github.com/ant-design/ant-design.git

# Extract all component documentation and examples
npm run extract

# Clean up - remove the Ant Design repo (no longer needed)
rm -rf ant-design
```

**What this does:**

- Downloads the latest Ant Design source code
- Extracts component documentation, API definitions, and examples
- Creates a `data/` directory with pre-processed documentation
- Allows the MCP server to work without the full Ant Design repository

### Step 4: Test the Installation

Verify everything is working correctly:

```bash
# Run the test suite to verify all tools work
npm test
```

This will test all available MCP tools and show sample outputs.

### Step 5: Start the Server

```bash
# Start the MCP server
npm start
```

The server is now ready to be used with Claude Desktop or Claude Code!

## Usage

### Command Line

Run the MCP server:

```bash
# Run server with pre-extracted data
npm start
# OR
npx -y mcp-antd-components
```

### Claude Desktop Integration

To use this MCP server with Claude Desktop, edit your `claude_desktop_config.json` configuration file:

```json
{
  "mcpServers": {
    "Ant Design Components": {
      "command": "npx",
      "args": ["-y", "mcp-antd-components"]
    }
  }
}
```

Location of the configuration file:

- macOS/Linux: `~/Library/Application Support/Claude/claude_desktop_config.json`
- Windows: `$env:AppData\Claude\claude_desktop_config.json`

### Claude Code Integration

To use this MCP server with Claude Code CLI, follow these steps:

1. **Add the Ant Design Components MCP server to Claude Code**

   ```bash
   # Basic syntax
   claude mcp add antd-components npx -y mcp-antd-components
   ```

2. **Verify the MCP server is registered**

   ```bash
   # List all configured servers
   claude mcp list

   # Get details for your Ant Design components server
   claude mcp get antd-components
   ```

3. **Remove the server if needed**

   ```bash
   claude mcp remove antd-components
   ```

4. **Use the tool in Claude Code**

   Once configured, you can invoke the tool in your Claude Code session by asking questions about Ant Design components.

**Tips:**

- Use the `-s` or `--scope` flag with `project` (default) or `global` to specify where the configuration is stored

### VS Code Integration

You can also use this MCP server directly in VS Code projects by setting up a local MCP configuration. This is useful when you want to access Ant Design documentation within a specific project.

#### Prerequisites

Make sure you have completed the [Installation Instructions](#installation-instructions) and the MCP server is working properly.

#### Setup Steps

1. **Start the MCP server** (keep it running in a terminal):

   ```bash
   # Navigate to your mcp-antd directory
   cd /path/to/mcp-antd

   # Start the server
   npm start
   ```

2. **Create MCP configuration in your project**:

   In your VS Code project, create a `.vscode` folder (if it doesn't exist) and add an `mcp.json` file:

   ```json
   {
     "servers": {
       "AntD": {
         "command": "node",
         "args": ["../mcp-antd/index.mjs"]
       }
     },
     "inputs": []
   }
   ```

3. **Adjust the file path**:

   The `"args": ["../mcp-antd/index.mjs"]` path needs to point to your MCP server installation. Here are some examples:

   **Example 1**: If your project structure looks like this:

   ```
   /Users/yourname/
   ├── mcp-antd/           (MCP server here)
   └── my-project/         (Your VS Code project here)
       └── .vscode/
           └── mcp.json
   ```

   Use: `"args": ["../mcp-antd/index.mjs"]`

   **Example 2**: If your MCP server is in a different location:

   ```
   /Users/yourname/
   ├── tools/
   │   └── mcp-antd/       (MCP server here)
   └── projects/
       └── my-project/     (Your VS Code project here)
           └── .vscode/
               └── mcp.json
   ```

   Use: `"args": ["../../tools/mcp-antd/index.mjs"]`

   **Example 3**: You can also use absolute paths:

   ```json
   "args": ["/Users/yourname/mcp-antd/index.mjs"]
   ```

4. **Reload VS Code**:

   After creating the `mcp.json` file, restart VS Code or reload the window to activate the MCP server.

#### How to Use

Once configured, you can ask questions about Ant Design components directly in VS Code:

- "What Ant Design components are available?"
- "Show me the Button component documentation"
- "What props does the Table component accept?"
- "Give me an example of using the Modal component"

The MCP server will provide detailed documentation, code examples, and API information right within your VS Code environment.

#### Troubleshooting

- **Server not found**: Check that the path in `mcp.json` correctly points to `index.mjs`
- **Permission errors**: Make sure the MCP server directory is readable
- **Server not starting**: Verify the MCP server works by running `npm start` in the mcp-antd directory first

## MCP Tools

The server provides the following tools for LLMs to interact with Ant Design component documentation:

- `list-components`: Lists all available Ant Design components in PascalCase format (e.g., Button, DatePicker)
- `get-component-props`: Gets the props and API documentation for a specific component (use PascalCase names like "Button")
- `get-component-docs`: Gets detailed documentation for a specific component (use PascalCase names like "DatePicker")
- `list-component-examples`: Lists all examples available for a specific component (use PascalCase names like "Table")
- `get-component-example`: Gets the code for a specific component example (component name in PascalCase)
- `search-components`: Search for components by name pattern (works with PascalCase patterns)

## Examples

Example queries to try:

```
What components are available in Ant Design?
Show me the documentation for the Button component.
What props does the Table component accept?
Show me code examples for the Modal component.
Get the example "basic" for the Form component.
Find components related to Input or Form elements.
```

Note: Component names are provided in PascalCase (e.g., Button, DatePicker, Table) to match React component naming conventions, even though the internal directory structure uses kebab-case (e.g., button, date-picker, table).

## How It Works

The `scripts/extract-docs.mjs` script extracts documentation from the Ant Design repository and saves it to the `data` directory. This includes:

- Component documentation (markdown)
- API/props documentation
- Example code
- Common props documentation

This approach has several advantages:

1. Users don't need to clone the entire Ant Design repository
2. Faster startup time for the MCP server
3. Smaller package size
4. Easier to update when new versions are released

To update the documentation for a new version of Ant Design, simply run the extraction script again with the updated repository.

# Ant Design Components Model Context Protocol Server

A Model Context Protocol (MCP) server that exposes Ant Design component documentation to Large Language Models (LLMs). This server allows an LLM to explore and understand Ant Design components through a set of specialized tools.

## Features

- Easy to use - no need to clone the entire Ant Design repository
- Pre-extracted component documentation for faster startup
- List all available Ant Design components
- Get detailed component documentation including descriptions and usage
- View component props and API definitions
- Browse code examples for specific components
- Search for components by name or functionality

## Initial Setup

To set up the MCP server, perform the following steps:

1. **Install dependencies**:

   ```bash
   npm install
   ```

2. **Clone the Ant Design repository**:

   ```bash
   git clone https://github.com/ant-design/ant-design.git
   ```

3. **Extract documentation**:

   ```bash
   npm run extract
   ```

4. **Test the server**:

   ```bash
   npm test
   ```

5. **Check if `data` folder is created; if yes, remove `./ant-design` folder**:
   ```bash
   ls -la data && rm -rf ./ant-design
   ```

This will create a `data` directory with all the extracted component documentation, which the MCP server will use.

This will run the MCP server and test all available tools with sample queries.

## Usage

### VSCode MCP Setup

To use this MCP server in VSCode, add the following configuration to your `mcp.json` file:

```json
{
  "servers": {
    "antd": {
      "command": "node",
      "args": ["../mcp-antd-components/index.mjs"]
    }
  },
  "inputs": []
}
```

**Note**: The `args` path is relative to the project where MCP is installed. Adjust the path (`../mcp-antd-components/index.mjs`) accordingly based on your project structure.

With this setup, the MCP server runs automatically when needed and does not require manual starting.

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

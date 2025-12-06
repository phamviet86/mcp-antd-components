# Ant Design MCP Server for Component Docs

Model Context Protocol (MCP) server that serves Ant Design component documentation to LLMs. Use it to browse components, props, and examples without pulling the whole Ant Design repo every time.

## What It Does

- Pre-extracted Ant Design docs for fast startup
- Tools to list components, fetch docs/props/examples, and search by name
- Works with VS Code MCP clients (config below)

## Ant Design versions in `data/`

Ant Design docs already extracted into this project's `data/` folder:

- 2025-12-06: updated Ant Design 6.0.1

## Setup

1. Install dependencies:

```bash
npm install
```

2. Clone the Ant Design repo (needed for extraction only):

```bash
git clone https://github.com/ant-design/ant-design.git
```

3. Extract docs:

```bash
npm run extract
```

4. (Optional) Run tests for the MCP server:

```bash
npm test
```

5. Confirm `data` exists, then drop the cloned repo to save space:

```bash
ls -la data && rm -rf ./ant-design
```

## VS Code MCP configuration

Add this to your VS Code `mcp.json`. This snippet is specifically for the VS Code MCP extension—adjust the `args` path if your folder structure differs.

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

With this in place, the MCP server starts automatically when the VS Code extension requests it.

## Tools exposed

- `list-components` — list Ant Design components (PascalCase)
- `get-component-props` — props/API for a component
- `get-component-docs` — detailed docs for a component
- `list-component-examples` — examples available for a component
- `get-component-example` — code for a specific example
- `search-components` — search components by name pattern

## Example prompts

```
What components are available in Ant Design?
Show me the documentation for the Button component.
What props does the Table component accept?
Show me code examples for the Modal component.
Get the example "basic" for the Form component.
Find components related to Input or Form elements.
```

Component names are PascalCase (Button, DatePicker, Table) even though the source folders use kebab-case.

## How extraction works

`scripts/extract-docs.mjs` pulls markdown docs, API/props, examples, and common props from the Ant Design repo into `data/`. Rerun the extraction against a newer Ant Design checkout to refresh the dataset.

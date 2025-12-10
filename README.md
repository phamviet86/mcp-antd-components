# Ant Design MCP server for VS Code

Model Context Protocol (MCP) server that serves Ant Design component docs to LLMs, tuned for the VS Code MCP extension.

## Quick start with VS Code

1. Clone this repo. Ant Design docs are already bundled in `data/` (see version below). No build needed if you use the included data.
2. Add this to your VS Code `mcp.json`:

```json
{
  "servers": {
    "antd": {
      "command": "node",
      "args": ["../mcp-antd-vscode/index.mjs"]
    }
  },
  "inputs": []
}
```

The MCP server starts automatically when the VS Code extension requests it. Adjust `args` if your folder layout differs.

## Ant Design packaged in `data/`

- 2025-12-09: Ant Design 6.1.0 (latest per `ant-design/CHANGELOG.en-US.md`) extracted and ready. If this version works for you, skip "Refresh data".

## Refresh data (optional)

Only needed if you want a different Ant Design version.

1. Install dependencies:
   ```bash
   npm install
   ```
2. Clone the Ant Design repo (only for extraction):
   ```bash
   git clone https://github.com/ant-design/ant-design.git
   ```
3. Check the latest Ant Design version from the changelog and note it for later:
   ```bash
   head -n 80 ant-design/CHANGELOG.en-US.md
   ```
4. Remove old extracted data:
   ```bash
   rm -rf data
   ```
5. Extract docs:
   ```bash
   npm run extract
   ```
6. (Optional) Run tests:
   ```bash
   npm test
   ```
7. Update the version line under "Ant Design packaged in `data/`" in `README.md` using the version you noted from step 3. Update the date if needed.
8. Verify `data`, then delete the cloned repo to save space:
   ```bash
   ls -la data && rm -rf ./ant-design
   ```

## MCP tools

- `list-components` — list components (PascalCase)
- `get-component-props` — component props/API
- `get-component-docs` — detailed docs
- `list-component-examples` — available examples
- `get-component-example` — code for a specific example
- `search-components` — search by name/pattern

## Prompt ideas

```
What components are available in Ant Design?
Show me the documentation for the Button component.
What props does the Table component accept?
Show me code examples for the Modal component.
Get the example "basic" for the Form component.
Find components related to Input or Form elements.
```

Component names use PascalCase (Button, DatePicker, Table) even though source folders are kebab-case.

## How extraction works

`scripts/extract-docs.mjs` pulls markdown docs, API/props, examples, and common props from the Ant Design repo into `data/`. Rerun it against a newer Ant Design checkout to refresh the dataset.

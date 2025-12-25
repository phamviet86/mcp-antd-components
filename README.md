# Ant Design MCP server for VS Code

Model Context Protocol (MCP) server that serves Ant Design component docs to LLMs, tuned for the VS Code MCP extension.

## Quick start with VS Code

1. Clone this repo and install dependencies (required once even when using the bundled data). No extra build is needed:

   ```bash
   npm install
   ```

   Ant Design docs are already bundled in `data/` (see version below).

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

## Ant Design versions packaged in project

- 2025-12-09:
  - Ant Design version: 6.1.2
  - Data version: 5.29.3

## Refresh data (optional)

Only needed if you want a different Ant Design version.
When asking an assistant to refresh data, confirm these inputs first:
- Clone a new `ant-design` repo or reuse the existing one?
- Switch versions (tag/branch) or keep current checkout?
- Remove `./ant-design` after extraction or keep it?
If the user does not specify, use defaults (update new version mode):
- Clone a fresh `ant-design`
- Do not switch versions
- Do not remove `./ant-design`

1. Install dependencies (skip if you already ran `npm install` in Quick start):
   ```bash
   npm install
   ```
2. Clone the Ant Design repo (only for extraction). If you are reusing an existing `./ant-design`, skip this step:
   ```bash
   git clone https://github.com/ant-design/ant-design.git
   ```
3. Move into the Ant Design folder:
   ```bash
   cd ant-design
   ```
4. Check the Ant Design version from the changelog and note it for later:
   ```bash
   head -n 80 CHANGELOG.en-US.md
   ```
5. (Optional) Switch to a specific Ant Design version. If you skip this, the data will use the current checkout (usually the latest):
   ```bash
   git checkout tags/5.29.3
   ```
6. (Optional) Check the Ant Design version again after switching and note it for later:
   ```bash
   head -n 80 CHANGELOG.en-US.md
   ```
7. Return to the project root:
   ```bash
   cd ..
   ```
8. Remove old extracted data:
   ```bash
   rm -rf data
   ```
9. Extract docs:
   ```bash
   npm run extract
   ```
10. (Optional) Run tests:
    ```bash
    npm test
    ```
11. Update the version lines under "Ant Design versions packaged in project" in `README.md` using the version you noted:
    - If you switched versions, use the version from step 6.
    - If you did not switch, use the version from step 4.
    - If you switched versions, `Data version` is the switched version.
    - If you did not switch, `Data version` matches `Ant Design version`.
12. Verify `data`, then optionally delete the cloned repo to save space (keep it if you want to switch versions later):
    ```bash
    ls -la data
    ```
    If you chose to remove the repo:
    ```bash
    rm -rf ./ant-design
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

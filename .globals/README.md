# .globals

This folder includes type definitions for luau-lsp, in it you will find:

- **environment.d.luau**: This holds definitions for the custom executor environment, helpful if you are developing a project that frequently, or directly accesses these functions.
- **pcmp.d.luau**: This hold global definitions for ProCMP markers and `_P`, the table that holds run-time build metadata.

Type definitions give you intellisense for certain functions and types. If you frequently experience linter warnings for globals that you know exist, then you might want to add a type definition file in this folder for it

> [!IMPORTANT]  
> Make sure that you include each definition in your [settings.json](../.vscode\settings.json) file for luau-lsp to recognize it.

# Dist

> A.K.A. `Distribution`

This folder includes all builds of your project such as:

- Debug
- Beta/Prerelease
- Release

If you look at [Debug](./debug.luau), you will notice it's more readable and not very "minified" like Release and Beta are. This is intentional, to help you debug a built file.

---

It is recommended to exclude this entire folder in your final commit using a `.gitignore` file in the root of your project, and instead use **Github releases** (ProCMP automatically handles Github release deployment)

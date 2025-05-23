# Core

This folder should include directly `init.luau` derivative modules

For example if you're making a script-hub your core layout may look like:

```yaml
core:
  shared:
    windows:
      - main.luau
      - keySystem.luau
    tabs:
      - home.luau
      - settings.luau
  games:
    arsenal:
      - init.luau
      - silentAim.luau
      - internalPatcher.luau
    phantom_forces:
      - init.luau
      - silentAim.luau
      - actorCommunication.luau
```

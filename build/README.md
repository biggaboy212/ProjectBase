# Build

This folder includes all build-related scripts and configuration. </br>
Files included by default:

- **.darklua_debug.json**: A configuration for darklua with helpful debugging rules such as line retaining and readable output. (Used when you select 'Debug' configuration during build-time)
- **.darklua.json**: A configuration for darklua used in Beta/Prerelease and Release builds. It compacts the output to its smallest size.
- **.pcmp.json**: A configuration for ProCMP which tells what configurations do what, and deployment info such as the owner and repo name, as well as the API key.

</br>

- **build.luau**: This is the ProCMP composer script, it allows for run-time access to build data by using a *frame*. (below)
- **frame.luau**: Used by ProCMP as the starting-point for build composition. It lets you globally insert build metadata such as the build version, and build configuration used.

---

Instead of manually running `build.luau` as a Lune script, VS Code has a feature called *tasks*, specifically, the *build* task.

- By default the build keybind is ***`Ctrl + Shift + B`***.
- You can also run the task by using keybind ***`Ctrl + Shift + P`***, typing `> Tasks: Run Task` then selecting `Run ProCMP`

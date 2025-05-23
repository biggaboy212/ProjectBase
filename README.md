# Project Base

## Installing dependencies

### [Aftman](https://github.com/LPGhatguy/aftman)

Aftman is a toolchain manager. It is required to install the dependencies below.

Download and extract the [latest release](https://github.com/LPGhatguy/aftman/releases/latest), then run the following command:

```ps1
<path_to_aftman.exe> self-install
```

> Replace `<path_to_aftman.exe>` with the actual location of your aftman executable. </br Example:
> ```ps1
> C:\Tools\aftman.exe self-install 
> ```

### [Lune](https://github.com/lune-org/lun)

Lune is a standalone Luau runtime.

```ps1
aftman add lune-org/lune
```

### [Darklua](https://github.com/seaofvoices/darklua)

Darklua minifies and transforms a multi-file lua project into a single executable script.

```ps1
aftman add seaofvoices/darklua
```

## Linting your code

Selene and Stylua will handle most of this for you, but they have their limits.

> The default keybind to run Stylua is **_`Shift + Alt + F`_**

### Naming

Naming conventions in programming refers to how you name things like functions, variables, etc. There are many different conventions:

- camelCase
- Snake_Case
- Kebab-Case
- PascalCase

Whatever you choose, it’s important to pick one and follow it consistently. You'll be surprised how quickly you can mix and match conventions without noticing.

> ❌ Don't

```lua
local Module = require("@core/module.luau")

local filename = "something.luau"

local function Make_File(name)
    print(`Made {name}!`)
end
```

> ✅ Do

```lua
local module = require("@core/module.luau")

local fileName = "something.luau"

local function makeFile(name)
    print(`Made {name}!`)
end
```

### Sections

Sectioning your code helps make it more readable and maintainable. There are many ways to do it, but this is the order I usually follow:

```lua
--// Imports
local module1 = require("@core/module1.luau")
local module2 = require("@modules/module2.luau")

--// Constants
local Constant1 = "Hello, World!" -- PascalCase is recommended for constants
local Constant2 = 1234567890

--// Variables
local variable1 = 5 -- This is mutable as its value is changed in initialize
local variable2 = os.time()

--// Methods
local method1 = module1.method1
local method2 = module2.method2

--// Functions
local function foo1(bar1, bar2)
    return bar1 ^ bar2
end

local function foo2(bar1)
    return bar1 * 100
end

--// Initialize
variable1 = foo1(variable1, 2)
foo2(variable1)

print(variable1)
```

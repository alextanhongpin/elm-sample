# elm-sample
Playing with elm

Installation is done via NPM.

```bash
npm i -g elm
```


You can install elm-packages with the command `elm-package install`,
which is similar to `npm install`.
```bash
elm-package install elm-lang/html
```

Build elm project with `elm-make`
```bash

elm-make Main.elm --output=main.html
```

To run a server on port:8000, use `elm-reactor` command:
```bash
elm-reactor
```
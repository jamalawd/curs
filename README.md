# curs

Switch Cursor accounts. Skills, plugins, and hooks stay shared.

```text
curs                  # pick an account
curs work             # launch a profile
curs list             # who is signed in where
```

The normal Cursor app is one login. Extra profiles get their own login, MCP
tokens, and User Rules. `~/.cursor` and `~/.agents` stay shared.

## Install

```bash
git clone git@github.com:jamalawd/curs.git
cd curs
./install.sh
```

Needs `bash`, `python3`, and the `cursor` CLI. macOS and Linux only.

## Usage

```text
curs                         Interactive picker
curs default                 Primary Cursor install
curs <profile> [path]        Launch a profile
curs add work --email you@acme.com
curs edit work --label Work
curs rm work
curs which work
curs help
```

The first launch of a new profile copies editor settings from the primary
install, then asks you to sign in.

`default` is the normal Cursor app. Extra profiles live in
`~/.cursor-profiles/`.

## Config

| Variable | Meaning |
| --- | --- |
| `CURSOR_BIN` | Path to the `cursor` executable |
| `CURSOR_PROFILES_DIR` | Profile root (default `~/.cursor-profiles`) |
| `NO_COLOR` | Disable color |

## License

MIT

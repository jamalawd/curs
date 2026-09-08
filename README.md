# curs

Switch Cursor accounts so work and personal usage stay on the right bill.
Skills, plugins, and hooks stay shared.

I have been using this for a while to keep PAYGO and API credits on the
account that should pay for them. Sharing it in case it is useful to someone
else.

The normal Cursor app is one login. Extra profiles get their own login, MCP
tokens, User Rules, and usage. `~/.cursor` and `~/.agents` stay shared.

```text
curs                  # pick an account
curs work             # launch a profile
curs list             # who is signed in where
```

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

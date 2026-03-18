# Docker Plugin for StatusBar

Docker container status widget for [StatusBar](https://github.com/hytfjwr/StatusBar).

## Features

- Running container count display
- Container status monitoring (10s interval)

## Install

In StatusBar preferences → Plugins → Add Plugin:

```
hytfjwr/statusbar-plugin-docker
```

## Development

```bash
make build      # Release build
make dev        # Build & install locally
make release    # Build & publish GitHub Release
```

## Requirements

- macOS 26+
- [StatusBar](https://github.com/hytfjwr/StatusBar)
- Docker Desktop or Docker Engine

## License

MIT

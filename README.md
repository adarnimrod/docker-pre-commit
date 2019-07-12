# Docker pre-commmit

> Pre-commit hooks for Docker and docker-compose.

## Requirements

- [Docker](https://www.docker.com/).
- [pre-commit](https://pre-commit.com/) 0.18.0 or later.

## Hooks

- `hadolint` - The [hadolint](https://github.com/hadolint/hadolint) Dockerfile
  linter.
- `docker-compose` - Validate the Docker Compose file using `docker-compose
  config`.

## Usage example

```yaml
- repo: https://www.shore.co.il/git/docker-pre-commit
  rev: v0.3.0
  hooks:
    - id: hadolint
    - id: docker-compose
    - id: dockerfile-lint
```

## License

This software is licensed under the MIT license (see `LICENSE.txt`).

## Author Information

Nimrod Adar, [contact me](mailto:nimrod@shore.co.il) or visit my [website](
https://www.shore.co.il/). Patches are welcome via [`git send-email`](
http://git-scm.com/book/en/v2/Git-Commands-Email). The repository is located
at: <https://www.shore.co.il/git/>.

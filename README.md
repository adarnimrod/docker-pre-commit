# Docker pre-commmit

**This project has been discontinued and has been replaced by
[pre-commit-hooks](https://git.shore.co.il/nimrod/pre-commit-hooks) and
[hadolint-py](https://github.com/AleksaC/hadolint-py).**

[![pipeline status](https://git.shore.co.il/nimrod/docker-pre-commit/badges/master/pipeline.svg)](https://git.shore.co.il/nimrod/docker-pre-commit/-/commits/master)

> Pre-commit hooks for Docker and docker-compose.

## Requirements

- [Docker](https://www.docker.com/).
- [pre-commit](https://pre-commit.com/) 0.18.0 or later.

## Usage example

```yaml
- repo: https://git.shore.co.il/nimrod/docker-pre-commit.git
  rev: v0.3.0
  hooks:
    - id: hadolint
    - id: docker-compose
    - id: dockerfile-lint
```

## License

This software is licensed under the MIT license (see `LICENSE.txt`).

## Author Information

Nimrod Adar, [contact me](mailto:nimrod@shore.co.il) or visit my
[website](https://www.shore.co.il/). Patches are welcome via
[`git send-email`](http://git-scm.com/book/en/v2/Git-Commands-Email). The repository
is located at: <https://git.shore.co.il/explore/>.

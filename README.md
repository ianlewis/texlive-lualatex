# `texlive-lualatex`

[![tests](https://github.com/ianlewis/texlive-lualatex-docker/actions/workflows/pre-submit.units.yml/badge.svg)](https://github.com/ianlewis/texlive-lualatex-docker/actions/workflows/pre-submit.units.yml) [![OpenSSF Scorecard](https://api.securityscorecards.dev/projects/github.com/ianlewis/texlive-lualatex-docker/badge)](https://securityscorecards.dev/viewer/?uri=github.com%2Fianlewis%2Ftexlive-lualatex-docker)

This is a Docker image for building LaTeX documents using `lualatex` with a
full [TeX Live](https://www.tug.org/texlive/) installation. It's most useful for
building LaTeX documents in GitHub Actions or other CI/CD systems.

The image is based on `ubuntu:24.04` and contains most of the packages available
in TeX Live, but does not include documentation.

## Features

- Based on `ubuntu:24.04`
- Full TeX Live installation
- All available language packages installed
- `lualatex` and `xetex` installed

## Usage

This section includes examples of how to use the image in different
environments.

## Docker CLI

You can use the image directly with the Docker CLI. The following command mounts
the current directory as `/data` in the container and sets the working directory
to `/data`. It then runs `lualatex` on `mydoc.tex` in the current directory.

```bash
docker run \
    --rm \
    -v $(pwd):/data \
    -w /data \
    ghcr.io/ianlewis/texlive-lualatex lualatex mydoc.tex
```

<!-- TODO(#2): GitHub Actions example -->

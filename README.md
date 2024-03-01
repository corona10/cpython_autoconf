# CPython Autoconf

- Container image with GNU Autotools to regenerate CPython's `configure` script.
- Fork from https://github.com/tiran/cpython_autoconf

## Fedora, CentOS and other SELinux-enabled systems with podman

```shell
$ podman run --rm --pull=always -v$(pwd):/src:Z ghcr.io/corona10/cpython_autoconf:272
```

## Arch, Debian, Gentoo, Ubuntu

```shell
$ podman run --rm --pull=always -v$(pwd):/src ghcr.io/corona10/cpython_autoconf:272
```

## macOS and Windows

```shell
$ docker run --rm --pull=always -v.:/src ghcr.io/corona10/cpython_autoconf:272
```
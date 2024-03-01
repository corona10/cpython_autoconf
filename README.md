# cpython_autoconf
- Container image with autotools to regenerate Python's configure script.
- Fork from https://github.com/tiran/cpython_autoconf

## Fedora, CentOS and other SELinux-enabled systems with podman

```shell
$ cd cpython
$ podman run --rm --pull=always -v$(pwd):/src:Z ghcr.io/corona10/cpython_autoconf:271
```

## Arch, Debian, Gentoo, Ubuntu

```shell
$ cd cpython
$ podman run --rm --pull=always -v$(pwd):/src ghcr.io/corona10/cpython_autoconf:271
```

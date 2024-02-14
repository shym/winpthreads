# winpthreads opam packaging support

winpthreads is packaged in opam in the same way as flexdll. A tarball is
downloaded which "installs" the required sources to `share/winpthreads` in the
switch, and this directory is then passed to OCaml's `configure` script by the
compiler opam packages.

Releases are versioned using the date of the commit and an epoch number,
e.g. 20240209-1 for d635af4d9. `scripts/gen_install.sh` generates an opam
`.install` file.

Releasing winpthreads involves creating a branch which merges an upstream commit
with this branch and then committing the generated winpthreads.install. Taking
d635af4d9 again:

```console
$ git checkout -b 20240902-1 d635af4d9
$ git merge --allow-unrelated-histories --no-commit opam
$ scripts/gen_install.sh > winpthreads.install
$ git add winpthreads.install
$ git commit -m 'opam package for 20240902-1'

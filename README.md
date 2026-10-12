# MCMCtree-focused PAML fork

This repository is a focused fork of PAML for working with `mcmctree`.
It keeps the source files and data needed to compile and run `mcmctree`,
plus the `baseml` and `codeml` helpers used by MCMCtree's approximate
likelihood workflow.

The full PAML package is maintained by Ziheng Yang and is available from
the upstream PAML project. This fork preserves the original GPL v3 license
and source lineage while trimming programs and examples that are unrelated
to MCMCtree workflows.

## Included programs

- `mcmctree`
- `infinitesites`
- `baseml`
- `codeml`

`baseml` and `codeml` are retained because MCMCtree can call them to
generate branch lengths, gradients, and Hessian matrices for approximate
likelihood analyses.

## Building

From the repository root:

```sh
make -C src
```

This builds:

```text
src/mcmctree
src/infinitesites
src/baseml
src/codeml
```

To remove build products:

```sh
make -C src clean
```

## Main directories

- `src/`: C source code and build rules for the retained programs.
- `dat/`: amino-acid rate matrix files used by protein analyses.
- `examples/`: MCMCtree-focused example datasets and control files.
- `doc/`: MCMCtree tutorial documentation.

## Notes

This fork is intentionally not a full PAML distribution. Programs such as
`yn00`, `evolver`, `pamp`, `chi2`, and `ds` have been removed from this
focused repository.

If you use this software, cite the appropriate PAML and MCMCtree papers,
including the original PAML references and the approximate-likelihood
MCMCtree references where relevant.

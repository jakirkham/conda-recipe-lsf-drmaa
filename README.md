# Purpose

This provides a basic recipe for building [lsf-drmaa]( https://github.com/IBMSpectrumComputing/lsf-drmaa ) with [`conda-build`]( https://github.com/conda/conda-build ) for use with [`conda`]( https://conda.io/docs/ ).

# Requirements

Will need to [install `conda`]( https://conda.io/docs/user-guide/install/download.html ) and [then `conda-build`]( https://conda.io/docs/user-guide/tasks/build-packages/install-conda-build.html ). Can use any existing `conda` install if you have one already. Also will need access to a working LSF install with headers and libraries available. All other dependencies come from the freely available [conda-forge]( https://conda-forge.org/ ).

# Usage

Clone this repo and `cd` into it. Then simply run the following.

```
conda build -c conda-forge conda.recipe
```

This will build the package, run a few tests, and place it in the `conda-bld` path specified at the end.
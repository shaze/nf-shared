# nf-shared
Auxiliary code shared across pipelines

## `fileGroups`

Does the equivalent of what `fromFilePairs`does. By default uses `simpleName`to
match like files, but you can pass an optional closure.


# To use

In the using GitHub repo

```
git submodule add https://github.com/shaze/nf-shared.git modules/shared
git commit -m "Add nf-shared as submodule"
```

And you need to add `recurseSubmodules`in your config

```
manifest {
    recurseSubmodules = true
    }
```

And you would then import

```
include { fileGroups } from './modules/shared/modules/file-groups'
```


- If cloning with plain Git, use `git clone --recurse-submodules `
- If this code changes, a user must manually update `git submodule update --remote modules/shared`, then commit in the pipeline repo.


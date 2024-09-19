# aleksanderbl29 setup for the r-universe

This repository holds a `packages.json` files
with the packages to be included in the dedicated universe
[aleksanderbl29.r-universe.dev/](https://aleksanderbl29.r-universe.dev)

Source universe for aleksanderbl29: <https://github.com/r-universe/aleksanderbl29>

Last deployment: <https://aleksanderbl29.r-universe.dev>

## Adding a new package to the r-universe

Just commit to [packages.json](https://github.com/aleksanderbl29/aleksanderbl29.r-universe.dev/blob/main/packages.json) with the following information:

```json

[
  ...
  },

  {
    "package": "name_of_the_package",
    "url": "https://url_of_the_repo",
    "branch" : "optional: name_of_the_branch e.g main",
    "subdir": "optional: name_of_the_subdir"
  },

  ...

  {
    "package": "dawaR",
    "url": "https://github.com/aleksanderbl29/dawaR"
  }
]
```

In a few minutes it would be available on
<https://aleksanderbl29.r-universe.dev>.

## Usage

```r

# Enable this universe
options(repos = c(
    aleksanderbl29 = 'https://aleksanderbl29.r-universe.dev',
    CRAN = 'https://cloud.r-project.org'))

# Install some packages
install.packages('dawaR')

```

### Note

This readme has been inspired by rOpenGov's approach.

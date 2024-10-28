pkg_url <- function(name) {
  paste0("https://github.com/aleksanderbl29/", name)
}

ropengov_pkg_url <- function(name) {
  paste0("https://github.com/ropengov/", name)
}

packages <- c(
  "dawaR",
  "aleksandeR",
  "geodk"
)

ropengov_pkgs <- c(
  "dawaR",
  "geodk",
  "dkdata"
)

pkg_url(packages)
ropengov_pkg_url(ropengov_pkgs)

df <- data.frame(
  package = packages,
  url = pkg_url(packages),
  branch = c("universe-release", rep(NA, length(packages) - 1))
)
jsonlite::write_json(df, "packages.json", pretty = TRUE)

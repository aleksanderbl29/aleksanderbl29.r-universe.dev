pkg_url <- function(name) {
  paste0("https://github.com/aleksanderbl29/", name)
}

ropengov_pkg_url <- function(name) {
  paste0("https://github.com/ropengov/", name)
}

packages <- c(
  "dawaR",
  "aleksandeR"
)

ropengov_pkgs <- c(
  "dawaR",
  "geodk",
  "dkdata"
)

pkg_url(packages)

df <- data.frame(
  package = c(packages, ropengov_pkgs),
  url = c(pkg_url(packages), ropengov_pkg_url(ropengov_pkgs)),
  branch = c("universe-release",
              rep("NA", length(ropengov_pkgs) + length(packages) - 1))
)
jsonlite::write_json(df, "packages.json", pretty = TRUE)

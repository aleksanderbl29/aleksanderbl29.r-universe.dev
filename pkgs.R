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

pkg_url(packages)

df <- data.frame(
  package = c(packages, "geofi"),
  url = c(pkg_url(packages), ropengov_pkg_url("geofi")),
  branch = c("universe-release", NA, NA)
)
jsonlite::write_json(df, "packages.json", pretty = TRUE)

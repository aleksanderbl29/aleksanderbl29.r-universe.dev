pkg_url <- function(name) {
  paste0("https://github.com/aleksanderbl29/", name)
}

ropengov_pkg_url <- function(name) {
  paste0("https://github.com/ropengov/", name)
}

packages <- c(
  "dawaR",
  # "dkdatadist",
  "aleksandeR"
)

pkg_url(packages)

df <- data.frame(
  package = packages,
  url = pkg_url(packages),
  branch = c("universe-release", rep(NA, length(packages) - 1))
)
jsonlite::write_json(df, "packages.json", pretty = TRUE)

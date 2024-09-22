pkg_url <- function(name) {
  paste0("https://github.com/aleksanderbl29/", name)
}

packages <- c(
  "dawaR",
  "aleksandeR"
)

pkg_url(packages)

df <- data.frame(
  package = packages,
  url = pkg_url(packages),
  branch = c("universe-release", NA)
)
jsonlite::write_json(df, "packages.json", pretty = TRUE)

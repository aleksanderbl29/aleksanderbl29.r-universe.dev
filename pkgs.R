pkg_url <- function(name) {
  paste0("https://github.com/aleksanderbl29/", name)
}

packages <- c(
  "dawaR",
  "aleksandeR"
)

pkg_url(packages)

df <- data.frame(
  package = c(packages, "dkstat"),
  url = c(pkg_url(packages), "https://github.com/rOpenGov/dkstat"),
  branch = c("universe-release", NA, NA)
)
jsonlite::write_json(df, "packages.json", pretty = TRUE)

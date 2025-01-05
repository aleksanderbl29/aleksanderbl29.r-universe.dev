pkg_url <- function(name) {
  paste0("https://github.com/aleksanderbl29/", name)
}

ropengov_pkg_url <- function(name) {
  paste0("https://github.com/ropengov/", name)
}

my_packages <- c(
  "dawaR",
  # "dkdatadist",
  "aleksandeR"
)

other_packages <- c(
  "broomstick"
)

other_urls <- c(
  "https://github.com/njtierney/broomstick"
)

pkg_url(packages)

df <- data.frame(
  package = c(my_packages, other_packages),
  url = c(pkg_url(my_packages), other_urls),
  branch = c("universe-release",
    rep(NA, length(my_packages) + length(other_packages) - 1))
)
jsonlite::write_json(df, "packages.json", pretty = TRUE)

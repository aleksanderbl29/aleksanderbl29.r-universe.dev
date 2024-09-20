df <- data.frame(
  package = c("dawaR",
              "aleksandeR"),
  url = c("https://github.com/aleksanderbl29/dawaR",
          "https://github.com/aleksanderbl29/dawaR"),
  branch = c("universe-release", NA)
)
jsonlite::write_json(df, "packages.json", pretty = TRUE)

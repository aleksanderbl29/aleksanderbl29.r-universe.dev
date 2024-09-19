df <- data.frame(
    package = c("dawaR"),
    url = c("https://github.com/aleksanderbl29/dawaR"),
    subdir = c("universe-release")
)
jsonlite::write_json(df, 'packages.json', pretty = TRUE)
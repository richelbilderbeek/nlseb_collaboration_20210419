names <- c(
  "CamilleTroisi",
  "chikhyjanet",
  "FrancescoGarassino",
  "FrejaGam",
  "Jia-Xiu",
  "LammersInsects",
  "lisavansluijs",
  "maopeng2018",
  "SarahDuxbury",
  "simoneweidner",
  "vissermcde"
)

names <- "richelbilderbeek"

n <- length(names)
t <- tibble::tibble(
  name = names,
  group = 1 + (seq(0, n - 1) %% 4)
)
testthat::expect_equal(nrow(t), length(names))

for (i in seq_len(n)) {
  name <- t$name[i]
  title <- paste0(name, ": clone repository")
  body <- c(
    "https://github.com/richelbilderbeek/nlseb_collaboration_20210419#your-first-clone-1"
  )
  args <- c(
    "gh", "issue", "create",
    "--title", shQuote(title),
    "--body", shQuote(body),
    "--assignee", name,
    "--project", shQuote("Our project")
  )
  system2(
    command = args[1],
    args = args[-1]
  )
}

for (i in seq_len(n)) {
  name <- t$name[i]
  title <- paste0(name, ": do a trivial push")
  body <- c(
    "https://github.com/richelbilderbeek/nlseb_collaboration_20210419#your-first-push-1"
  )
  args <- c(
    "gh", "issue", "create",
    "--title", shQuote(title),
    "--body", shQuote(body),
    "--assignee", name,
    "--project", shQuote("Our project")
  )
  system2(
    command = args[1],
    args = args[-1]
  )
}


for (i in seq_len(n)) {
  name <- t$name[i]
  group <- t$group[i]
  title <- paste0(name, ": do a push to report ", group)
  body <- c(
    "https://github.com/richelbilderbeek/nlseb_collaboration_20210419#your-second-push"
  )
  args <- c(
    "gh", "issue", "create",
    "--title", shQuote(title),
    "--body", shQuote(body),
    "--assignee", name,
    "--project", shQuote("Our project")
  )
  system2(
    command = args[1],
    args = args[-1]
  )
}

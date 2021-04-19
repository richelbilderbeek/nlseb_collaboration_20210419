# A-E: CamilleTroisi, chikhyjanet, cwtyson, elp9
# F-L: FrancescoGarassino, FrejaGam, Jia-Xiu, LammersInsects, lisavansluijs
# M-R: Mahdere, maopeng2018, meijer-jeroen, MLindner0, nbrait
# S-Z: SarahDuxbury, simoneweidner, vissermcde, wmakkinje

processed_names <- c(
  "CamilleTroisi",
  "chikhyjanet",
  "cwtyson",
  "FrancescoGarassino",
  "FrejaGam",
  "Jia-Xiu",
  "LammersInsects", #that's me, Mark :D
  "lisavansluijs",
  "Mahdere",
  "MLindner0",
  "nbrait",
  "SarahDuxbury",
  "simoneweidner",
  "vissermcde",
  "elp9",
  "maopeng2018",
  "xiaoyanlong",
  "wmakkinje",
  "meijer-jeroen"
)



names <- c(
  "PedroBeschoren"
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
    "--project", shQuote("Getting started")
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
    "--project", shQuote("Getting started")
  )
  system2(
    command = args[1],
    args = args[-1]
  )
}

###############################################################################
# Create the Issues to write a paper
###############################################################################

chapters <- c(
  "Abstract",
  "Introduction",
  "Methods",
  "Discussion",
  "References",
  "Supplementary Materials"
)
paper_indices <- seq(1, 4)

if (1 == 2) {
  paper_indices <- paper_indices[1:2]
  chapters <- chapters[1:2]
}

for (paper_index in paper_indices) {
  for (chapter in chapters) {
    title <- paste0("Improve chapter '", chapter, "' of paper ", paper_index)
    body <- paste0(
      "In the file 'paper_", paper_index, ".md', improve the '", chapter, "' chapter."
    )
    project <- paste0("Paper ", paper_index)
    args <- c(
      "gh", "issue", "create",
      "--title", shQuote(title),
      "--body", shQuote(body),
      "--project", shQuote(project)
    )
    system2(
      command = args[1],
      args = args[-1]
    )

  }
}

library(targets)
library(tarchetypes)
library(geotargets)
library(crew)
library(here)

tar_option_set(
  packages = c("lubridate"),
  format = "qs",
  workspace_on_error = T
)

tar_source(c(
  here("src/dirs.R"),
  here("src/functions.R")
))

list(
  tar_target(
    name = todays_date,
    command = today()
  )
)

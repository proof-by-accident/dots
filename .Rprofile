## local creates a new, empty environment
## This avoids polluting the global environment with
## the object r
local({
  r = getOption("repos")
    r["CRAN"] = "https://cran.rstudio.com"
      options(repos = r)
      })


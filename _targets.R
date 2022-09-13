library(targets)
sapply(list.files("R", full.names=TRUE), source)
tar_option_set(packages = c("stevedata", "tidyverse", "modelr", "stevemisc"))
list(
  tar_target(Data, prep()),
  tar_target(Mods, {
    Data
    analysis()
    }),
  tar_target(QI, {
    Mods
    Data
    qi()
  }),
  tar_target(ms_rmd, "ms.Rmd", format = "file"),
  tar_target(ms_yaml, "_config.yaml", format = "file"),
  tar_target(docs, {Data
    Mods
    QI
    ms_rmd
    ms_yaml
    render_pdf()
    render_pdfanon()
    render_docx()
    })
)

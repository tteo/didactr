% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/translate_slides.R
\name{translate_slide}
\alias{translate_slide}
\title{Translate Google Slide Text to Another Language}
\usage{
translate_slide(id, target = "es", detect = TRUE, verbose = TRUE)
}
\arguments{
\item{id}{Google Slide ID, usually from \code{\link{drive_ls}}}

\item{target}{language to translate to, see \code{\link{gl_translate}}}

\item{detect}{Should \code{\link{gl_detect_file}} be run to
check that the language is not currently the target?
Must be google Language authorized using \code{\link{gl_auth}}}

\item{verbose}{Print diagnostic messages}
}
\value{
A list of results from \code{\link{commit_to_slides}}
}
\description{
Translate Google Slide Text to Another Language
}
\examples{
\dontrun{
library(googledrive)
check_didactr_auth()
# id = "147UQaZBB5RoTpzsNiqkqEr4N8fcHBMB6eNr_5IdksRk"
info = drive_find("datatables", n_max = 25, type = "presentation")
info = info[grepl("^06" ,info$name), ]
if (nrow(info) > 0) {
info = info[1,]
xid = drive_cp(info, name = paste0("Translated ",
info$name))
id = xid
translated = translate_slide(id, target = "es")
drive_trash(id)
}

}
}

% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/vids_to_youtube.R
\name{vids_to_youtube}
\alias{vids_to_youtube}
\title{Upload videos to YouTube}
\usage{
vids_to_youtube(course_status, course_title = NULL, json = NULL,
  verbose = TRUE, ...)
}
\arguments{
\item{course_status}{object output from \code{\link{check_course}}}

\item{course_title}{Course to be used in title of youtube video}

\item{json}{Link to json file with credentials}

\item{verbose}{print diagnostic messages}

\item{...}{arguments to pass to \code{\link{didactr_auth}}}
}
\value{
A list from \code{\link{check_course}} with another field of
\code{youtube_uploads}.
}
\description{
Upload videos to YouTube
}

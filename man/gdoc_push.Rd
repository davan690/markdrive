% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gd_interface.R
\name{gdoc_push}
\alias{gdoc_push}
\title{Push a markdrive controlled markdown file back to Google drive as an update to
the source Google doc.}
\usage{
gdoc_push(filename, preserve_whitespace = TRUE)
}
\arguments{
\item{filename}{a complete or partial filename to be searched for in the `.markdrive/` folder under
the current working directory}

\item{preserve_empty_lines}{If TRUE empty whitespace lines are preserved in the translation to Google doc.
This is most likely what you want if you use empty lines in your online document. If you want to write PURE markdown,
and handle this yourself with <br> etc, Set to FALSE.}
}
\value{
a fresh handle to the updated file.
}
\description{
Given a filename, this funciton will search for previously checked out files that
match. A selection menu is output if there is more than 1 match.
}
\details{
Once the file to be pushed is identified, the md is converted to html with pandoc and
uploaded to Google drive as the new 'media' for the checked out file.
}
\examples{
/dontrun{
gdoc_push("GOT")
#Pushes the local file "my GOT theory.md" as an update to the remote Google doc
"my GOT theory"
}
}

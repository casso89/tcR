% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/stats.R
\name{mitcr.stats}
\alias{lib.mitcr.stats}
\alias{mitcr.stats}
\title{MiTCR data frame basic statistics.}
\usage{
mitcr.stats(.data, .head = 0, .col = 'Read.count')

lib.mitcr.stats(.data, .head = 0, .umi = NA)
}
\arguments{
\item{.data}{MiTCr data frames or a list with MiTCR data frames.}

\item{.head}{How many top clones use to comput summary.}

\item{.col}{Which columns to use to compute statistics.}

\item{.umi}{If T than use both "Barcode.count" and "Read.count" columns. If NA than check if
"Barcode.count" in columns' names.}
}
\value{
if \code{.data} is a data frame, than numeric vector with statistics. If \code{.data} is
a list with data frames, than matrix with statistics for each data frame.
}
\description{
Compute basic statistics of TCR repertoires: number of clones, number of clonotypes,
number of in-frame and out-of-frame sequences, summary of "Read.count" and other.
}
\examples{
\dontrun{
# Compute basic statistics of list with data frames.
mitcr.stats(immdata)
lib.mitcr.stats(immdata)
}
}


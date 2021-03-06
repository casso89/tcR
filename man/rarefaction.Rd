% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/diversity.R
\name{rarefaction}
\alias{rarefaction}
\title{Diversity evaluation using rarefaction.}
\usage{
rarefaction(.data, .step = 30000, .quantile = c(0.025, 0.975),
  .extrapolation = T, .col = "Barcode.count", .verbose = T)
}
\arguments{
\item{.data}{Data frame or a list with data frames.}

\item{.step}{Step's size.}

\item{.quantile}{Numeric vector of length 2 with quantiles for confidence intervals.}

\item{.extrapolation}{If T than perform extrapolation of all samples to the size of the max one + 200000 reads or barcodes.}

\item{.col}{Column's name from which choose frequency of each clone.}

\item{.verbose}{If T than print progress bar.}
}
\value{
Data frame with first column for sizes, second columns for the first quantile,
third column for the mean, fourth columns for the second quantile, fifth columns
for the name of subject.
}
\description{
Sequentially resample the given data with growing sample size the given data and compute mean number of unique clones.
For more details on the procedure see "Details".
}
\details{
This subroutine is designed for diversity evaluation of repertoires. On each step it computes a
mean unique clones from sample of fixed size using bootstrapping. Unique clones for each sample from bootstrap computed
as a number of non-zero elements in a vector from multinomial distribution with input vector of probabilities from the \code{.col} column
using function \code{rmultinom} with parameters n = .n, size = i * .step, prob = .data[, .col] (i is an index of current iteration)
and choosing for lower and upper bound \code{quantile} bounds of the computed distribution of unique clones.
}
\examples{
\dontrun{
rarefaction(immdata, .col = "Read.count")
}
}
\seealso{
\link{vis.rarefaction} \link{rmultinom}
}


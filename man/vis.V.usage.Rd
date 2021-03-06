% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/plots.R
\name{vis.V.usage}
\alias{vis.J.usage}
\alias{vis.V.usage}
\title{Histogram of segments usage.}
\usage{
vis.V.usage(.data, .cast.freq = T, .main = "V-usage", .ncol = 3,
  .coord.flip = F, .dodge = F, ...)
}
\arguments{
\item{.data}{Mitcr data frame or a list with mitcr data frames.}

\item{.cast.freq}{If T than cast \code{freq.Vb} (for \code{vis.V.usage}) or \code{freq.Jb} (for \code{vis.J.usage}) on \code{.data} before plotting.}

\item{.main}{Main title of the plot.}

\item{.ncol}{Number of columns in a grid of histograms if \code{.data} is a list and \code{.dodge} is F.}

\item{.coord.flip}{If T than flip coordinates.}

\item{.dodge}{If \code{.data} is a list, than if this is T plot V-usage for all data frames to the one histogram.}

\item{...}{Parameter passed to \code{freq.segments}. By default the function compute V-usage or J-usage for beta chains
w/o using read counts and w/ "Other" segments.}
}
\value{
ggplot object.
}
\description{
Plot a histogram or a grid of histograms of V- / J-usage.
}
\examples{
\dontrun{
# Load your data.
load('immdata.rda')
# Compute V-usage statistics.
imm1.vs <- freq.Vb(immdata[[1]])
# Two eqivalent calls for plotting the V-usage for all data frames on the one plot:
vis.V.usage(immdata, .cast.freq = T, .main = 'Immdata V-usage [1]', .dodge = T)
vis.V.usage(imm1.vs, .cast.freq = F, .main = 'Immdata V-usage [2]', .dodge = T)
# Plot a grid of histograms - one histogram for V-usage for each data frame in .data.
vis.V.usage(immdata, .cast.freq = T, .main = 'Immdata V-usage [3]', .dodge = F, .other = F)
}
}


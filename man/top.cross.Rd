% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/stats.R
\name{top.cross}
\alias{top.cross}
\alias{top.cross.plot}
\alias{top.cross.vec}
\title{Perform sequential cross starting from the top of a data.frame.}
\usage{
top.cross(.data, .n = NA, .data2 = NULL, .type = 'ave', .norm = F, .verbose = T)

top.cross.vec(.top.cross.res, .i, .j)

top.cross.plot(.top.cross.res, .xlab = 'Top clones',
               .ylab = 'Normalised number of shared clones',
               .nrow = 2, .legend.ncol = 1, .logx = T, .logy = T)
}
\arguments{
\item{.data}{Either list of data.frames or a data.frame.}

\item{.n}{Integer vector of parameter appled to the head function; same as .n in the top.fun function. See "Details" for more information.}

\item{.data2}{Second data.frame or NULL if .data is a list.}

\item{.type}{Parameter .type to the \code{tcR::intersect} function.}

\item{.norm}{Parameter .norm to the \code{tcR::intersect} function.}

\item{.verbose}{If T than plot a progress bar.}

\item{.top.cross.res}{Result from the \code{top.cross} function.}

\item{.i,.j}{Coordinate of a cell in each matrix.}

\item{.xlab}{Name for a x-lab.}

\item{.ylab}{Name for a y-lab.}

\item{.nrow}{Number of rows of sub-plots in the output plot.}

\item{.legend.ncol}{Number of columns in the output legend.}

\item{.logx}{If T than transform x-axis to log-scale.}

\item{.logy}{If T than transform y-axis to log-scale.}
}
\value{
\code{top.cross} - return list for each element in \code{.n} with intersection matrix (from \code{tcR::intersect}).

\code{top.cross.vec} - vector of length \code{.n} with \code{.i}:\code{.j} elements of each matrix.

\code{top.cross.plot} - grid / ggplot object.
}
\description{
\code{top.cross} - get top crosses of the given type between each pair of the given data.frames with \code{top.cross} function.

\code{top.cross.vec} - get vector of cross values for each top with the \code{top.cross.vec} function.

\code{top.cross.plot} - plot a plots with result with the \code{top.cross.plot} function.
}
\details{
Parameter \code{.n} can have two possible values. It could be either integer vector of numbers (same as in the \code{top.fun} function) or
NA and then it will be replaced internally by the value \code{.n <- seq(5000, min(sapply(.data, nrow)), 5000)}.
}
\examples{
\dontrun{
immdata.top <- top.cross(immdata)
top.cross.plot(immdata.top)
}
}
\seealso{
\code{\link{intersect}}
}


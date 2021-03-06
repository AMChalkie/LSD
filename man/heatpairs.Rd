% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/LSD.heatscatter.R
\name{heatpairs}
\alias{heatpairs}
\alias{LSD.heatpairs}
\title{Pairwise colored scatterplot based on a two-dimensional Kernel Density Estimation}
\usage{
heatpairs(mat, main = "heatpairs", xlim = NULL, ylim = NULL,
  labels = NULL, add.points = FALSE, group = NULL,
  color.group = "magenta", method = "spearman", colpal = "heat",
  simulate = FALSE, daltonize = FALSE, cvd = "p", alpha = NULL,
  rev = FALSE, pch = 19, cexplot = 0.5, cor.cex = 2.5,
  nrcol = 30, grid = 100, only = "none", add.contour = FALSE,
  nlevels = 10, color.contour = "black", greyscale = FALSE,
  log = "", ...)
}
\arguments{
\item{mat}{a matrix with numerical entries.}

\item{main}{title(s) of the plot, standard graphics parameter.}

\item{xlim}{x limits, standard graphics parameter.}

\item{ylim}{y limits, standard graphics parameter.}

\item{labels}{a character vector giving the labels to be shown on the diagonal.}

\item{add.points}{logical: if \code{TRUE} (\code{FALSE} by default), a certain 'group' of points can be colored in all pairwise plots.}

\item{group}{indices or rownames of 'mat' to be highlighted in all pairwise plots (not necessarily all).}

\item{color.group}{R build-in color in which the 'group' of points should be highlighted.}

\item{method}{a character specifying the correlation method to use ('pearson' (default), 'kendall' or 'spearman').}

\item{colpal}{a character vector containing R built-in color names or a name of a \code{LSD} colorpalette as a character string (see disco() or \code{\link{disco}}) (defaults to "heat", if not specified).}

\item{simulate}{logical: if \code{TRUE} (\code{FALSE} by default), a converted colorpalette is used to simulate dichromat vision according to \url{http://www.daltonize.org} (see \code{\link{daltonize}}).}

\item{daltonize}{logical: if \code{TRUE} (\code{FALSE} by default), a converted colorpalette is used to enhance dichromat vision according to \url{http://www.daltonize.org} (see \code{\link{daltonize}}).}

\item{cvd}{character string implying the type of color vision deficiency ("p" for protanope, "d" for deuteranope or "t" for tritanope).}

\item{alpha}{alpha value: a two-digit integer between 01 and 99 for color opacity, i.e. appearance of partial or full transparency (usage omitted by default).}

\item{rev}{logical: if \code{TRUE} (\code{FALSE} by default), a reversed colorpalette is used.}

\item{pch}{plotting 'character'. This can either be a single character or an integer code for one of a set of graphics symbols. (see '?pch', to be passed to plot).}

\item{cexplot}{a numerical value giving the amount by which the points should be magnified relative to the default.}

\item{cor.cex}{a numerical value giving the amount by which the correlation characters should be magnified relative to the default.}

\item{nrcol}{a non-negative integer specifying the number of colors to be used (defaults to 100, if not specified).}

\item{grid}{an integer specifying the size of the grid used for the KDE.}

\item{only}{a character string which contains 'x' if the density should only be computed for the x axis, 'y' for the y axis (defaults to 'none' for the two-dimensional case).}

\item{add.contour}{logical: if \code{TRUE} (\code{FALSE} by default), the contour lines are added to the plot.}

\item{nlevels}{an integer giving the number of levels of the contour lines.}

\item{color.contour}{R build-in color for the contour lines.}

\item{greyscale}{logical: if \code{TRUE} (\code{FALSE} by default), the used colorpalette is converted to greyscales.}

\item{log}{a character string which contains "x" if the x axis is to be logarithmic, "y" if the y axis is to be logarithmic and "xy" or "yx" if both axes are to be logarithmic.}

\item{...}{additional parameters to be passed to points and plot}
}
\description{
Pairwise visualization of two dimensional data in a three dimensional fashion facilitating a color encoded Kernel Density Estimation.
}
\examples{
points = 10^4
x = rnorm(points/2)
x = c(x,x+2.5)
y = x + rnorm(points,sd=0.75)
x = sign(x)*abs(x)^1.3
mat = cbind(x,y,x + rnorm(points,sd=0.5))
colnames(mat) = c("x","y","z")
rownames(mat) = 1:nrow(mat)

heatpairs(mat,labels=c(expression(Xi),expression(Lambda),expression(Delta)))
}
\seealso{
\code{\link{comparisonplot}}, \code{\link{demotour}}, \code{\link{disco}}, \code{\link{colorpalette}}
}
\author{
Bjoern Schwalb
}
\keyword{heatcolors}
\keyword{scatterplot,}

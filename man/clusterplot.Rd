% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/LSD.clusterplot.R
\name{clusterplot}
\alias{clusterplot}
\alias{LSD.clusterplot}
\title{Visualize two-dimensional data clusters}
\usage{
clusterplot(input, label = NULL, at = NULL, main = NULL,
  xlim = NULL, ylim = NULL, xlabels = NULL, fromto = c(0.05, 0.95),
  colpal = "standardheat", simulate = FALSE, daltonize = FALSE,
  cvd = "p", nrcol = 25, outer.col = "lightgrey",
  quartiles.col = c("grey", "black", "grey"), add.quartiles = TRUE,
  separate = TRUE, rev = FALSE, size = TRUE, alpha = NULL,
  axes = TRUE, ...)
}
\arguments{
\item{input}{matrix or list with numerical entries.}

\item{label}{a character vector assigning rows/elements of 'input' to clusters (if specified, multiple clusters can be depicted in different colors and/or subsequent plots).}

\item{at}{a integer vector containing the x-positions corresponding to the columns of 'input'.}

\item{main}{title(s) of the plot, standard graphics parameter.}

\item{xlim}{x limits, standard graphics parameter.}

\item{ylim}{y limits, standard graphics parameter.}

\item{xlabels}{a character vector containing labels for the x-axis.}

\item{fromto}{a numeric vector containing the range of quantiles (between 0 and 1) to be plotted.}

\item{colpal}{a character vector containing R built-in color names or a name of a \code{LSD} colorpalette as a character string (see disco() or \code{\link{disco}}).}

\item{simulate}{logical: if \code{TRUE} (\code{FALSE} by default), a converted colorpalette is used to simulate dichromat vision according to \url{http://www.daltonize.org} (see \code{\link{daltonize}}).}

\item{daltonize}{logical: if \code{TRUE} (\code{FALSE} by default), a converted colorpalette is used to enhance dichromat vision according to \url{http://www.daltonize.org} (see \code{\link{daltonize}}).}

\item{cvd}{character string implying the type of color vision deficiency ("p" for protanope, "d" for deuteranope or "t" for tritanope).}

\item{nrcol}{a non-negative integer specifying the number of colors to be used (defaults to 25, if not specified).}

\item{outer.col}{R built-in color to be used for outlier lines (lines outside of 'fromto').}

\item{quartiles.col}{a character vector containing three R built-in colors for quartile lines (c('0.25','0.5','0.75')).}

\item{add.quartiles}{logical: if \code{TRUE} (by default), lines are plotted corresponding to the quartiles.}

\item{separate}{if \code{TRUE} (by default), different clusters are depicted in subsequent plots.}

\item{rev}{logical: if \code{TRUE} (\code{FALSE} by default), a reversed colorpalette is used.}

\item{size}{logical: if \code{TRUE} (by default), the size of each cluster is added to the title of the respective plot.}

\item{alpha}{alpha value: a two-digit integer between 01 and 99 for color opacity, i.e. appearance of partial or full transparency (usage omitted by default).}

\item{axes}{logical: if \code{TRUE} (by default), a box and axes are added to the plot (if \code{FALSE}, custom specification of axes can be achieved via basic R graphics functions).}

\item{...}{additional parameters to be passed to points and plot.}
}
\description{
Depict a numeric matrix or list utilizing the underlying distribution quantiles of one dimension in a color encoded fashion.
}
\examples{
samples = 100
probes = 75
at = 1:probes
clus = matrix(rnorm(probes*samples,sd=1),ncol=probes)

clus = rbind(
	t(t(clus)+sin(1:probes/10))+1:nrow(clus)/samples,
	t(t(clus)+sin(pi/2+1:probes/10))+1:nrow(clus)/samples)

quartiles.col = c("transparent","black","transparent")
colpal = c("standardheat","crazyblue","crazyred","crazygreen")

labs = paste("cluster",kmeans(clus,4)$cluster)
clusterplot(clus,fromto=c(0,1))

clusterplot(clus,labs,separate=FALSE,xaxt="n",fromto=c(0.4,0.6),colpal=colpal,
	outer.col="none",ylim=c(-2,3),quartiles.col = quartiles.col)
 
clusterplot(clus,labs,colpal=colpal)

labs = paste("cluster",kmeans(clus,2)$cluster)
colpal = c("greens","purples")
clusterplot(clus,labs,separate=FALSE,xaxt="n",fromto=c(0.3,0.7),colpal=colpal,
	outer.col="none",ylim=c(-1,2),alpha=50,quartiles.col = quartiles.col)
}
\seealso{
\code{\link{singleclusterplot}}, \code{\link{align}}, \code{\link{demotour}}, \code{\link{disco}}, \code{\link{colorpalette}}
}
\author{
Achim Tresch, Bjoern Schwalb
}
\keyword{cluster}

% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cancensus.R
\name{cancensus.load_geo}
\alias{cancensus.load_geo}
\title{Convenience function to load only census geography without data.}
\usage{
cancensus.load_geo(dataset, level, regions, geo_format = "sf", ...)
}
\arguments{
\item{dataset}{A CensusMapper dataset identifier.}

\item{level}{The census aggregation level to retrieve. One of \code{"Regions"}, \code{"PR"}, \code{"CMA"}, \code{"CD"}, \code{"CSD"}, \code{"CT"} or \code{"DA"}.}

\item{regions}{A named list of census regions to retrieve. Names must be valid census aggregation levels.}

\item{geo_format}{One of \code{"sf"} to return an \code{\link[sf]{sf}} object (the default; requires the \code{sf} package), \code{"sp"} to return a \code{\link[sp]{SpatialPolygonsDataFrame}} object (requires the \code{rgdal} package), or \code{NA} to append no geographical information to the returned data at all.}

\item{...}{Further arguments passed on to \code{\link[cancensus]{cancensus.load}}.}
}
\description{
Convenience function to load only census geography without data.
}
\examples{
census_data <- cancensus.load_geo(dataset='CA16', regions=list(CMA="59933"),
                                  level='CSD', geo_format = "sf")
}
\keyword{api}
\keyword{canada}
\keyword{census}
\keyword{data}

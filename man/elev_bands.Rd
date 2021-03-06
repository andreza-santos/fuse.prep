% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/elevation-bands.R
\name{elev_bands}
\alias{elev_bands}
\title{Fraction of precipitation and catchment area by elevation bands}
\usage{
elev_bands(
  con_dem,
  meteo_raster = NULL,
  dz = 100,
  nbands = NULL,
  quiet = FALSE
)
}
\arguments{
\item{con_dem}{raster of conditioned elevation of catchment}

\item{meteo_raster}{raster of meteorological field (precipitation,
evapotranspiration, ...).}

\item{dz}{numeric scalar, interval (m) to elevation bands. Calculates basin
area distributions within 100 m elevation by default.}

\item{nbands}{numeric scalar. Default: NULL (use \code{dz} to build elevation
bands).}

\item{quiet}{Hide messages (FALSE, the default), or display them.}
}
\value{
a \link[tibble:tibble-package]{tibble} with fraction of precipitation
and elevation covered by elevation bands. The output columns in this tibble
are:
\describe{
\item{zone}{indice elevation zone}
\item{inf}{lower limit of elevation band}
\item{sup}{upper limit of elevation band}
\item{mean_elev}{mid point of elevation band}
\item{area_frac}{fraction of the catchment covered by the elevation band}
\item{prec_frac}{fraction of catchment precipitation that falls on the
elevation band}
}
}
\description{
Fraction of precipitation and catchment area by elevation bands
}
\examples{
\dontrun{
  if(FALSE){
   elev_bands(con_dem = condem74, meteo_raster = precclim74, dz = 100)
  }
}
}
\seealso{
\code{\link[raster]{cut}}, \code{\link[raster]{resample}},
\code{\link[raster]{zonal}}

Other elevation bands functions: 
\code{\link{centroids}()},
\code{\link{elev_bands_nc}()}
}
\concept{elevation bands functions}

% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/variables.R
\name{create_variable_definition}
\alias{create_variable_definition}
\title{Create a variable definition}
\usage{
create_variable_definition(name, longname = "", units = "mm",
  missval = -9999, precision = "double", dim_type = "4",
  var_attribute = create_var_attribute_definition())
}
\arguments{
\item{name}{variable name}

\item{longname}{variable long name}

\item{units}{variable units}

\item{missval}{value code for missing data}

\item{precision}{precision}

\item{dim_type}{dimension type (EFTS integer code)}

\item{var_attribute}{list of attributes for the netCDF variable to create}
}
\value{
a list
}
\description{
Create a variable definition usable by the function \code{\link{create_efts_variables}} to create netCDF variables.
}
\examples{
var_def <- create_variable_definition(name='rain_der', 
  longname='Rainfall ensemble forecast derived from some prediction', units='mm', 
  missval=-9999.0, precision='double', var_attribute=list(type=2L, 
    description="accumulated over the preceding interval", 
    dat_type = "der", dat_type_description="AWAP data interpolated from observations",
    location_type = "Point"))
}

% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/earthquake_functions.R
\name{eq_location_clean}
\alias{eq_location_clean}
\title{Cleans the LOCATION_NAME column in NOAA earthquake data}
\usage{
eq_location_clean(eq_cleanup)
}
\arguments{
\item{eq_cleanup}{The dataframe with the NOAA data that has some
modified columns.}
}
\value{
This function returns the earthquake data with a cleaned
   LOCATION_NAME column in a tbl_df object.
}
\description{
This function cleans the LOCATION_NAME column by removing
the COUNTRY at the beginning of the string.  The function
also converts the location names to title case for display
purposes.
}
\details{
This function is called from the eq_clean_data function.
}
\examples{
\dontrun{
Recommended:
filename<-system.file("extdata","earthquakes_data.txt.gz",package="earthquakesViz")
readr::read_delim(filename, delim = "\\t") \%>\%
eq_clean_data()

To clean just the LOCATION_NAME column:
filename<-system.file("extdata","earthquakes_data.txt.gz",package="earthquakesViz")
readr::read_delim(filename, delim = "\\t") \%>\%
eq_location_clean()
}

}


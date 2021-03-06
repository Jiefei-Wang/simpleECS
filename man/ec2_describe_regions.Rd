% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2-actions.R
\name{ec2_describe_regions}
\alias{ec2_describe_regions}
\title{Describe Regions}
\usage{
ec2_describe_regions(
  Filter = NULL,
  RegionName = NULL,
  DryRun = NULL,
  AllRegions = NULL,
  simplify = TRUE,
  others = list(),
  print_on_error = aws_get_print_on_error(),
  retry_time = aws_get_retry_time(),
  network_timeout = aws_get_network_timeout(),
  region = aws_get_region()
)
}
\arguments{
\item{Filter}{Named list where the name is the filter name and the value is the
filter's value. The value can be a vector or a list object (see below)[optional]}

\item{RegionName}{List. The names of the Regions.[optional]}

\item{DryRun}{Logical. Checks whether you have the required permissions for the action, without actually making the request,...[optional]}

\item{AllRegions}{Logical. Indicates whether to display all Regions, including Regions that are disabled for your account.[optional]}

\item{simplify}{Logical. Whether to simplify the result and handle \code{nextToken}
in the response[optional]}

\item{others}{Named list. The parameters that are not included in the
function parameters and need to be added into the request[optional]}

\item{print_on_error}{Logical. Whether to show an error message when a
network error occurs.}

\item{retry_time}{Integer. Number of retries for a REST request when encounter the
network issue. If the request has been sent \code{retry_time} times but still not
be able to get the response, an error will be thrown.}

\item{network_timeout}{Numeric. Number of seconds to wait for a REST response
until giving up. Can not be less than 1 ms.}

\item{region}{Character. The region of the AWS service.}
}
\value{
A list object or a character vector
}
\description{
Describe Regions
}
\section{Filter}{


The filters.
\itemize{
\item \code{endpoint} - The endpoint of the Region (for example,
\verb{ec2.us-east-1.amazonaws.com}).
\item \verb{opt-in-status} - The opt-in status of the Region
(\verb{opt-in-not-required} \| \verb{opted-in} \| \verb{not-opted-in}).
\item \code{region-name} - The name of the Region (for example, \code{us-east-1}).
}
}

\section{RegionName}{

The names of the Regions. You can specify any
Regions, whether they are enabled and disabled for your
account.
}

\section{DryRun}{

Checks whether you have the required
permissions for the action, without actually making the request, and
provides an error response. If you have the required permissions, the
error response is \code{DryRunOperation}. Otherwise, it is
\code{UnauthorizedOperation}.
}

\section{AllRegions}{

Indicates whether to
display all Regions, including Regions that are disabled for your
account.
}


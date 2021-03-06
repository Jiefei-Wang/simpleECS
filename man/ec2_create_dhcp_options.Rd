% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2-actions.R
\name{ec2_create_dhcp_options}
\alias{ec2_create_dhcp_options}
\title{Create Dhcp Options}
\usage{
ec2_create_dhcp_options(
  DhcpConfiguration,
  TagSpecification = NULL,
  DryRun = NULL,
  simplify = TRUE,
  others = list(),
  print_on_error = aws_get_print_on_error(),
  retry_time = aws_get_retry_time(),
  network_timeout = aws_get_network_timeout(),
  region = aws_get_region()
)
}
\arguments{
\item{DhcpConfiguration}{List. A DHCP configuration option.}

\item{TagSpecification}{List. The tags to assign to the DHCP option.[optional]}

\item{DryRun}{Logical. Checks whether you have the required permissions for the action, without actually making the request,...[optional]}

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
Create Dhcp Options
}
\section{DhcpConfiguration}{

A DHCP
configuration option.
}

\section{TagSpecification}{

The tags to assign to the DHCP
option.
}

\section{DryRun}{

Checks whether you have the required
permissions for the action, without actually making the request, and
provides an error response. If you have the required permissions, the
error response is \code{DryRunOperation}. Otherwise, it is
\code{UnauthorizedOperation}.
}


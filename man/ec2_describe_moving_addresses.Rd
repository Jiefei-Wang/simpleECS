% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2-actions.R
\name{ec2_describe_moving_addresses}
\alias{ec2_describe_moving_addresses}
\title{Describe Moving Addresses}
\usage{
ec2_describe_moving_addresses(
  Filter = NULL,
  DryRun = NULL,
  MaxResults = NULL,
  NextToken = NULL,
  PublicIp = NULL,
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

\item{DryRun}{Logical. Checks whether you have the required permissions for the action, without actually making the request,...[optional]}

\item{MaxResults}{Integer.   The maximum number of results to return for the request in a single page.[optional]}

\item{NextToken}{Characters. The token for the next page of results[optional]}

\item{PublicIp}{List. One or more Elastic IP addresses.[optional]}

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
Describes your Elastic IP addresses that are being
moved to the EC2-VPC platform, or that are being restored to the
EC2-Classic platform. This request does not return information about any
other Elastic IP addresses in your
account.
}
\section{Filter}{


One or more filters.
\itemize{
\item \code{moving-status} - The status of the Elastic IP address
(\code{MovingToVpc} \| \code{RestoringToClassic}).
}
}

\section{DryRun}{

Checks whether you have the required permissions
for the action, without actually making the request, and provides an
error response. If you have the required permissions, the error response
is \code{DryRunOperation}. Otherwise, it is
\code{UnauthorizedOperation}.
}

\section{MaxResults}{


The maximum number of results to return for the request in a single
page. The remaining results of the initial request can be seen by
sending another request with the returned \code{NextToken} value. This value
can be between 5 and 1000; if \code{MaxResults} is given a value outside of
this range, an error is returned.

Default: If no value is provided, the default is 1000.
}

\section{PublicIp}{

One or more Elastic IP
addresses.
}


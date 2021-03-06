% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2-actions.R
\name{ec2_purchase_reserved_instances_offering}
\alias{ec2_purchase_reserved_instances_offering}
\title{Purchase Reserved Instances Offering}
\usage{
ec2_purchase_reserved_instances_offering(
  InstanceCount,
  ReservedInstancesOfferingId,
  DryRun = NULL,
  LimitPrice = NULL,
  PurchaseTime = NULL,
  simplify = TRUE,
  others = list(),
  print_on_error = aws_get_print_on_error(),
  retry_time = aws_get_retry_time(),
  network_timeout = aws_get_network_timeout(),
  region = aws_get_region()
)
}
\arguments{
\item{InstanceCount}{Integer. The number of Reserved Instances to purchase.}

\item{ReservedInstancesOfferingId}{Character. The ID of the Reserved Instance offering to purchase.}

\item{DryRun}{Logical. Checks whether you have the required permissions for the action, without actually making the request,...[optional]}

\item{LimitPrice}{Object. Specified for Reserved Instance Marketplace offerings to limit the total order and ensure that the...[optional]}

\item{PurchaseTime}{Character. The time at which to purchase the Reserved Instance, in UTC format (for example, \emph{YYYY}-\emph{MM}-\emph{DD}T\emph{HH}:\emph{MM}:\emph{SS}Z)....[optional]}

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
Purchase Reserved Instances Offering
}
\section{InstanceCount}{

The number of
Reserved Instances to purchase.
}

\section{ReservedInstancesOfferingId}{

The ID of the
Reserved Instance offering to purchase.
}

\section{DryRun}{

Checks
whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.
}

\section{LimitPrice}{

Specified
for Reserved Instance Marketplace offerings to limit the total order and
ensure that the Reserved Instances are not purchased at unexpected
prices.
}

\section{PurchaseTime}{

The time at which to purchase the Reserved
Instance, in UTC format (for example,
\emph{YYYY}-\emph{MM}-\emph{DD}T\emph{HH}:\emph{MM}:\emph{SS}Z).
}


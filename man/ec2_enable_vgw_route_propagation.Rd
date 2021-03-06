% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2-actions.R
\name{ec2_enable_vgw_route_propagation}
\alias{ec2_enable_vgw_route_propagation}
\title{Enable Vgw Route Propagation}
\usage{
ec2_enable_vgw_route_propagation(
  GatewayId,
  RouteTableId,
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
\item{GatewayId}{Character. The ID of the virtual private gateway that is attached to a VPC.}

\item{RouteTableId}{Character. The ID of the route table.}

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
Enables a virtual private gateway (VGW) to
propagate routes to the specified route table of a
VPC.
}
\section{GatewayId}{

The ID of the virtual
private gateway that is attached to a VPC. The virtual private gateway
must be attached to the same VPC that the routing tables are associated
with.
}

\section{RouteTableId}{

The ID of the route table. The routing table
must be associated with the same VPC that the virtual private gateway is
attached to.
}

\section{DryRun}{

Checks whether you have the required
permissions for the action, without actually making the request, and
provides an error response. If you have the required permissions, the
error response is \code{DryRunOperation}. Otherwise, it is
\code{UnauthorizedOperation}.
}


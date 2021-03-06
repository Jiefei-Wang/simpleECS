% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2-actions.R
\name{ec2_describe_customer_gateways}
\alias{ec2_describe_customer_gateways}
\title{Describe Customer Gateways}
\usage{
ec2_describe_customer_gateways(
  CustomerGatewayId = NULL,
  Filter = NULL,
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
\item{CustomerGatewayId}{List.   One or more customer gateway IDs.  Default: Describes all your customer gateways.  [optional]}

\item{Filter}{Named list where the name is the filter name and the value is the
filter's value. The value can be a vector or a list object (see below)[optional]}

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
Describe Customer Gateways
}
\section{CustomerGatewayId}{


One or more customer gateway IDs.

Default: Describes all your customer gateways.
}

\section{Filter}{


One or more filters.
\itemize{
\item \code{bgp-asn} - The customer gateway\'s Border Gateway Protocol (BGP)
Autonomous System Number (ASN).
\item \code{customer-gateway-id} - The ID of the customer gateway.
\item \code{ip-address} - The IP address of the customer gateway\'s
Internet-routable external interface.
\item \code{state} - The state of the customer gateway (\code{pending} \|
\code{available} \| \code{deleting} \| \code{deleted}).
\item \code{type} - The type of customer gateway. Currently, the only supported
type is \code{ipsec.1}.
\item \code{tag}:\ - The key/value combination of a tag assigned to the
resource. Use the tag key in the filter name and the tag value as
the filter value. For example, to find all resources that have a tag
with the key \code{Owner} and the value \code{TeamA}, specify \code{tag:Owner} for
the filter name and \code{TeamA} for the filter value.
\item \code{tag-key} - The key of a tag assigned to the resource. Use this
filter to find all resources assigned a tag with a specific key,
regardless of the tag value.
}
}

\section{DryRun}{

Checks whether you have the required permissions
for the action, without actually making the request, and provides an
error response. If you have the required permissions, the error response
is \code{DryRunOperation}. Otherwise, it is
\code{UnauthorizedOperation}.
}


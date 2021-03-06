% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2-actions.R
\name{ec2_describe_transit_gateway_connects}
\alias{ec2_describe_transit_gateway_connects}
\title{Describe Transit Gateway Connects}
\usage{
ec2_describe_transit_gateway_connects(
  TransitGatewayAttachmentIds = NULL,
  Filter = NULL,
  MaxResults = NULL,
  NextToken = NULL,
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
\item{TransitGatewayAttachmentIds}{List. The IDs of the attachments.[optional]}

\item{Filter}{Named list where the name is the filter name and the value is the
filter's value. The value can be a vector or a list object (see below)[optional]}

\item{MaxResults}{Integer. The maximum number of results to return with a single call.[optional]}

\item{NextToken}{Characters. The token for the next page of results[optional]}

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
Describes one or more Connect
attachments.
}
\section{TransitGatewayAttachmentIds}{

The IDs of the
attachments.
}

\section{Filter}{


One or more filters. The possible values are:
\itemize{
\item \code{options.protocol} - The tunnel protocol (\code{gre}).
\item \code{state} - The state of the attachment (\code{initiating} \|
\code{initiatingRequest} \| \code{pendingAcceptance} \| \code{rollingBack} \|
\code{pending} \| \code{available} \| \code{modifying} \| \code{deleting} \| \code{deleted}
\| \code{failed} \| \code{rejected} \| \code{rejecting} \| \code{failing}).
\item \code{transit-gateway-attachment-id} - The ID of the Connect attachment.
\item \code{transit-gateway-id} - The ID of the transit gateway.
\item \code{transport-transit-gateway-attachment-id} - The ID of the transit
gateway attachment from which the Connect attachment was created.
}
}

\section{MaxResults}{

The maximum number of results to return with a
single call. To retrieve the remaining results, make another call with
the returned \code{nextToken} value.
}

\section{DryRun}{

Checks whether you have the
required permissions for the action, without actually making the
request, and provides an error response. If you have the required
permissions, the error response is \code{DryRunOperation}. Otherwise, it is
\code{UnauthorizedOperation}.
}


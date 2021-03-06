% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2-actions.R
\name{ec2_create_vpc_peering_connection}
\alias{ec2_create_vpc_peering_connection}
\title{Create Vpc Peering Connection}
\usage{
ec2_create_vpc_peering_connection(
  DryRun = NULL,
  PeerOwnerId = NULL,
  PeerVpcId = NULL,
  VpcId = NULL,
  PeerRegion = NULL,
  TagSpecification = NULL,
  simplify = TRUE,
  others = list(),
  print_on_error = aws_get_print_on_error(),
  retry_time = aws_get_retry_time(),
  network_timeout = aws_get_network_timeout(),
  region = aws_get_region()
)
}
\arguments{
\item{DryRun}{Logical. Checks whether you have the required permissions for the action, without actually making the request,...[optional]}

\item{PeerOwnerId}{Character.   The AWS account ID of the owner of the accepter VPC.  Default: Your AWS account ID  [optional]}

\item{PeerVpcId}{Character. The ID of the VPC with which you are creating the VPC peering connection.[optional]}

\item{VpcId}{Character. The ID of the requester VPC. You must specify this parameter in the request.[optional]}

\item{PeerRegion}{Character.   The Region code for the accepter VPC, if the accepter VPC is located in a Region other than the...[optional]}

\item{TagSpecification}{List. The tags to assign to the peering connection.[optional]}

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
Create Vpc Peering Connection
}
\section{DryRun}{

Checks whether
you have the required permissions for the action, without actually
making the request, and provides an error response. If you have the
required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.
}

\section{PeerOwnerId}{


The AWS account ID of the owner of the accepter VPC.

Default: Your AWS account ID
}

\section{PeerVpcId}{

The ID of the VPC with which you are creating the
VPC peering connection. You must specify this parameter in the
request.
}

\section{VpcId}{

The ID of the requester VPC. You must
specify this parameter in the request.
}

\section{PeerRegion}{


The Region code for the accepter VPC, if the accepter VPC is located in
a Region other than the Region in which you make the request.

Default: The Region in which you make the request.
}

\section{TagSpecification}{

The tags to assign to the peering
connection.
}


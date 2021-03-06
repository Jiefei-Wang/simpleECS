% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2-actions.R
\name{ec2_describe_subnets}
\alias{ec2_describe_subnets}
\title{Describe Subnets}
\usage{
ec2_describe_subnets(
  Filter = NULL,
  SubnetId = NULL,
  DryRun = NULL,
  NextToken = NULL,
  MaxResults = NULL,
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

\item{SubnetId}{List.   One or more subnet IDs.  Default: Describes all your subnets.  [optional]}

\item{DryRun}{Logical. Checks whether you have the required permissions for the action, without actually making the request,...[optional]}

\item{NextToken}{Characters. The token for the next page of results[optional]}

\item{MaxResults}{Integer. The maximum number of results to return with a single call.[optional]}

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
Describe Subnets
}
\section{Filter}{


One or more filters.
\itemize{
\item \code{availability-zone} - The Availability Zone for the subnet. You can
also use \code{availabilityZone} as the filter name.
\item \code{availability-zone-id} - The ID of the Availability Zone for the
subnet. You can also use \code{availabilityZoneId} as the filter name.
\item \code{available-ip-address-count} - The number of IPv4 addresses in the
subnet that are available.
\item \code{cidr-block} - The IPv4 CIDR block of the subnet. The CIDR block you
specify must exactly match the subnet\'s CIDR block for information
to be returned for the subnet. You can also use \code{cidr} or
\code{cidrBlock} as the filter names.
\item \verb{default-for-az} - Indicates whether this is the default subnet for
the Availability Zone. You can also use \code{defaultForAz} as the filter
name.
\item \code{ipv6-cidr-block-association.ipv6-cidr-block} - An IPv6 CIDR block
associated with the subnet.
\item \code{ipv6-cidr-block-association.association-id} - An association ID for
an IPv6 CIDR block associated with the subnet.
\item \code{ipv6-cidr-block-association.state} - The state of an IPv6 CIDR
block associated with the subnet.
\item \code{owner-id} - The ID of the AWS account that owns the subnet.
\item \code{state} - The state of the subnet (\code{pending} \| \code{available}).
\item \code{subnet-arn} - The Amazon Resource Name (ARN) of the subnet.
\item \code{subnet-id} - The ID of the subnet.
\item \code{tag}:\ - The key/value combination of a tag assigned to the
resource. Use the tag key in the filter name and the tag value as
the filter value. For example, to find all resources that have a tag
with the key \code{Owner} and the value \code{TeamA}, specify \code{tag:Owner} for
the filter name and \code{TeamA} for the filter value.
\item \code{tag-key} - The key of a tag assigned to the resource. Use this
filter to find all resources assigned a tag with a specific key,
regardless of the tag value.
\item \code{vpc-id} - The ID of the VPC for the subnet.
}
}

\section{SubnetId}{


One or more subnet IDs.

Default: Describes all your subnets.
}

\section{DryRun}{

Checks whether you have the required permissions
for the action, without actually making the request, and provides an
error response. If you have the required permissions, the error response
is \code{DryRunOperation}. Otherwise, it is
\code{UnauthorizedOperation}.
}

\section{MaxResults}{

The maximum number of results to return
with a single call. To retrieve the remaining results, make another call
with the returned \code{nextToken} value.
}


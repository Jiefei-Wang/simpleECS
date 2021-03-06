% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2-actions.R
\name{ec2_describe_capacity_reservations}
\alias{ec2_describe_capacity_reservations}
\title{Describe Capacity Reservations}
\usage{
ec2_describe_capacity_reservations(
  CapacityReservationId = NULL,
  NextToken = NULL,
  MaxResults = NULL,
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
\item{CapacityReservationId}{List. The ID of the Capacity Reservation.[optional]}

\item{NextToken}{Characters. The token for the next page of results[optional]}

\item{MaxResults}{Integer. The maximum number of results to return for the request in a single page.[optional]}

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
Describes one or more of your Capacity
Reservations. The results describe only the Capacity Reservations in the
AWS Region that you\'re currently using.
}
\section{CapacityReservationId}{

The ID of the Capacity
Reservation.
}

\section{MaxResults}{

The maximum number of results to
return for the request in a single page. The remaining results can be
seen by sending another request with the returned \code{nextToken} value.
This value can be between 5 and 500. If \code{maxResults} is given a larger
value than 500, you receive an error.
}

\section{Filter}{


One or more filters.
\itemize{
\item \code{instance-type} - The type of instance for which the Capacity
Reservation reserves capacity.
\item \code{owner-id} - The ID of the AWS account that owns the Capacity
Reservation.
\item \code{availability-zone-id} - The Availability Zone ID of the Capacity
Reservation.
\item \code{instance-platform} - The type of operating system for which the
Capacity Reservation reserves capacity.
\item \code{availability-zone} - The Availability Zone ID of the Capacity
Reservation.
\item \code{tenancy} - Indicates the tenancy of the Capacity Reservation. A
Capacity Reservation can have one of the following tenancy settings:
\itemize{
\item \code{default} - The Capacity Reservation is created on hardware that
is shared with other AWS accounts.
\item \code{dedicated} - The Capacity Reservation is created on
single-tenant hardware that is dedicated to a single AWS
account.
}
\item \code{state} - The current state of the Capacity Reservation. A Capacity
Reservation can be in one of the following states:
\itemize{
\item \code{active}- The Capacity Reservation is active and the capacity is
available for your use.
\item \code{expired} - The Capacity Reservation expired automatically at
the date and time specified in your request. The reserved
capacity is no longer available for your use.
\item \code{cancelled} - The Capacity Reservation was cancelled. The
reserved capacity is no longer available for your use.
\item \code{pending} - The Capacity Reservation request was successful but
the capacity provisioning is still pending.
\item \code{failed} - The Capacity Reservation request has failed. A
request might fail due to invalid request parameters, capacity
constraints, or instance limit constraints. Failed requests are
retained for 60 minutes.
}
\item \code{end-date} - The date and time at which the Capacity Reservation
expires. When a Capacity Reservation expires, the reserved capacity
is released and you can no longer launch instances into it. The
Capacity Reservation\'s state changes to expired when it reaches its
end date and time.
\item \code{end-date-type} - Indicates the way in which the Capacity
Reservation ends. A Capacity Reservation can have one of the
following end types:
\itemize{
\item \code{unlimited} - The Capacity Reservation remains active until you
explicitly cancel it.
\item \code{limited} - The Capacity Reservation expires automatically at a
specified date and time.
}
\item \code{instance-match-criteria} - Indicates the type of instance launches
that the Capacity Reservation accepts. The options include:
\itemize{
\item \code{open} - The Capacity Reservation accepts all instances that
have matching attributes (instance type, platform, and
Availability Zone). Instances that have matching attributes
launch into the Capacity Reservation automatically without
specifying any additional parameters.
\item \code{targeted} - The Capacity Reservation only accepts instances
that have matching attributes (instance type, platform, and
Availability Zone), and explicitly target the Capacity
Reservation. This ensures that only permitted instances can use
the reserved capacity.
}
}
}

\section{DryRun}{

Checks whether you have the required permissions
for the action, without actually making the request, and provides an
error response. If you have the required permissions, the error response
is \code{DryRunOperation}. Otherwise, it is
\code{UnauthorizedOperation}.
}

